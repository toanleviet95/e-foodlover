class PaymentController < ApplicationController
  require 'paypal-sdk-rest'
  def index
    if cookies[:cart_items]
      @items = []
      cart_items = JSON.parse(cookies[:cart_items])
      cart_items.each do |cart_item|
        food = Food.new.get_food_by_id(cart_item["food_id"].to_i)
        price = 0
        if food.promote_price
          price = food.promote_price
        else
          price = food.price
        end
        item = { :id => food.id, :image => food.image_url_1, :name => food.name, :price => price, :qty => cart_item["qty"].to_i}
        @items << item
      end
      if cookies[:email]
        @user = User.find_by(email: cookies[:email])
      else
        @user = nil
      end
    else
      redirect_to '/gio-hang/chi-tiet'
    end
  end

  def create
    if cookies[:cart_items]
      if ApplicationHelper.check_email?(params[:email]) and ApplicationHelper.check_phone?(params[:phone]) and params[:fullname] and params[:address] and params[:method] and params[:city]
        transaction = Transaction.new
        transaction.customer_name = params[:fullname]
        transaction.customer_email = params[:email]
        transaction.customer_phone = params[:phone]
        transaction.customer_address = params[:address]
        transaction.customer_city = params[:city]
        transaction.amount = cookies[:cur_cost]
        transaction.quantity = cookies[:cur_qty]
        transaction.payment_method = params[:method]
        transaction.status = true
        cart_items = JSON.parse(cookies[:cart_items])
        if transaction.save!
          if transaction.payment_method == 'COD'
            cart_items.each do |cart_item|
              food = Food.new.get_food_by_id(cart_item["food_id"].to_i)
              price = 0
              if food.promote_price
                price = food.promote_price
              else
                price = food.price
              end
              invoice = Invoice.new
              invoice.transaction_id = transaction.id
              invoice.food_id = food.id
              invoice.quantity = cart_item["qty"].to_i
              invoice.amount = price
              invoice.status = false
              invoice.user_id = food.user.user_id
              invoice.save!
            end
            session[:transaction_id] = transaction.id
            respond_to do |format|
              response = { :status => "200", :message => "success" }
              format.json  { render :json => response }
            end
          else
            if params[:card_type] and params[:card_number] and params[:card_month] and params[:card_year] and params[:card_cvv]
              data = []
              total = 0
              cart_items.each do |cart_item|
                food = Food.new.get_food_by_id(cart_item["food_id"].to_i)
                price = 0
                if food.promote_price
                  price = food.promote_price
                else
                  price = food.price
                end
                price = price*1.0 / 22800
                price = ActionController::Base.helpers.number_to_currency price
                price.slice!(0)
                item = { :name => food.name, :sku => food.id.to_s, :price => price, :currency => "USD", :quantity => cart_item["qty"].to_i }
                data << item
              end
              data.each do |cart_item|
                total = total + cart_item[:price].to_f*cart_item[:quantity]
              end
              total = ActionController::Base.helpers.number_to_currency total
              total.slice!(0)
              arr = params[:fullname].split(" ")
              payment = PayPal::SDK::REST::Payment.new({:intent => "sale",
                                     :payer => {
                                         :payment_method => "credit_card",
                                         :funding_instruments => [
                                             {:credit_card => {
                                                 :type => params[:card_type],
                                                 :number => params[:card_number],
                                                 :expire_month => params[:card_month],
                                                 :expire_year => params[:card_year],
                                                 :cvv2 => params[:card_cvv],
                                                 :first_name => arr[arr.length - 1],
                                                 :last_name => arr[0],
                                                 :billing_address => {
                                                     :line1 => params[:address],
                                                     :city => params[:city],
                                                     :state => params[:city],
                                                     :postal_code => "700000",
                                                     :country_code => "VN" }}}]
                                     },
                                     :transactions => [
                                         {
                                             :item_list => {
                                                 :items => data
                                             },
                                             :amount => {
                                                 :total => total,
                                                 :currency => "USD"
                                             }
                                         }]
                                    })
              if payment.create
                cart_items.each do |cart_item|
                  food = Food.new.get_food_by_id(cart_item["food_id"].to_i)
                  price = 0
                  if food.promote_price
                    price = food.promote_price
                  else
                    price = food.price
                  end
                  invoice = Invoice.new
                  invoice.transaction_id = transaction.id
                  invoice.food_id = food.id
                  invoice.quantity = cart_item["qty"].to_i
                  invoice.amount = price
                  invoice.status = false
                  invoice.user_id = food.user.user_id
                  invoice.save!
                end
                session[:transaction_id] = transaction.id
                respond_to do |format|
                  response = { :status => "200", :message => "success" }
                  format.json  { render :json => response }
                end
              else
                respond_to do |format|
                  response = { :status => "501", :message => "fail" }
                  format.json  { render :json => response }
                end
              end
            else
              respond_to do |format|
                response = { :status => "501", :message => "fail" }
                format.json  { render :json => response }
              end
            end
            end
        end
      else
        respond_to do |format|
          response = { :status => "501", :message => "fail" }
          format.json  { render :json => response }
        end
      end
    else
      redirect_to '/gio-hang/chi-tiet'
    end
  end

  def success
    if session[:transaction_id]
      @transaction = Transaction.new.get_transaction_by_id(session[:transaction_id])
      invoices = @transaction.invoices
      @items = []
      invoices.each do |invoice|
        food = Food.new.get_food_by_id(invoice.food_id)
        item = { :id => food.id, :image => food.image_url_1, :name => food.name, :price => invoice.amount, :qty => invoice.quantity}
        @items << item
      end
      cookies.delete :cart_items
      cookies.delete :cur_cost
      cookies.delete :cur_qty
      session[:transaction_id] = nil
    else
      redirect_to '/gio-hang/chi-tiet'
    end
  end
end
