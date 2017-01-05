class CartController < ApplicationController
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
        item = { :id => food.id, :image => food.image_url_1, :name => food.name, :price => price, :qty => cart_item["qty"].to_i, :url => food.url, :stock_qty => food.stock_qty}
        @items << item
      end
    else
      @items = nil
    end
  end

  def delete
    if cookies[:cart_items] && params[:id].to_i > 0
      data = '['
      cart_items = JSON.parse(cookies[:cart_items])
      cart_items.each do |cart_item|
        if cart_item["food_id"].to_i != params[:id].to_i
          data += '{"food_id": '+'"'+cart_item["food_id"].to_s+'", "qty": '+ '"'+cart_item["qty"]+'"},'
        end
      end
      data += ']'
      data = data.sub(',]',']')
      if data == '[]'
        cookies.delete :cart_items
        cookies.delete :cur_cost
        cookies.delete :cur_qty
      else
        cookies.delete :cart_items
        cookies.delete :cur_cost
        cookies.delete :cur_qty
        cart_items = JSON.parse(data)
        cur_qty = 0
        cur_cost = 0
        cart_items.each do |cart_item|
          food = Food.new.get_food_by_id(cart_item["food_id"].to_i)
          price = 0
          if food.promote_price
            price = food.promote_price
          else
            price = food.price
          end
          cur_cost = cur_cost.to_i + price
          cur_qty = cur_qty.to_i + cart_item["qty"].to_i
        end
        cookies[:cur_qty] = { :value => cur_qty, :expires => Time.now + 24*3600}
        cookies[:cur_cost] = { :value => cur_cost, :expires => Time.now + 24*3600}
        cookies[:cart_items] = { :value => data, :expires => Time.now + 24*3600}
      end
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
  end

  def update
    if cookies[:cart_items] && params[:cart]
      data = '['
      cart_items = params[:cart]
      i = 0
      cur_cost = 0
      cur_qty = 0
      check = false
      cart_items.each do |cart_item|
        j = i.to_s
        if ApplicationHelper.is_number?(cart_items[j]['qty'].to_s) and cart_items[j]['qty'].to_i < cart_items[j]['stock_qty'].to_i
          data += '{"food_id": '+'"'+cart_items[j]['food_id'].to_s+'", "qty": '+ '"'+cart_items[j]['qty'].to_s+'"},'
          cur_qty = cur_qty.to_i + cart_items[j]['qty'].to_i
          cur_cost = cur_cost.to_i + cart_items[j]['price'].to_i*cart_items[j]['qty'].to_i
          check = true
        else
          check = false
          break
        end
        i = i + 1
      end
      if check == false
        respond_to do |format|
          response = { :status => "501", :message => "fail" }
          format.json  { render :json => response }
        end
      end
      data += ']'
      data = data.sub(',]',']')
      if data == '[]'
        cookies.delete :cart_items
        cookies.delete :cur_cost
        cookies.delete :cur_qty
      else
        cookies.delete :cart_items
        cookies.delete :cur_cost
        cookies.delete :cur_qty
        cookies[:cart_items] = { :value => data, :expires => Time.now + 24*3600}
        cookies[:cur_qty] = { :value => cur_qty, :expires => Time.now + 24*3600}
        cookies[:cur_cost] = { :value => cur_cost, :expires => Time.now + 24*3600}
      end
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
  end

  def create
    if cookies[:cart_items]
      check = true
      data = ''
      cart_items = JSON.parse(cookies[:cart_items])
      cart_items.each do |cart_item|
        if cart_item["food_id"].to_i == params[:item][:food_id].to_i
          update_qty = cart_item["qty"].to_i + params[:item][:qty].to_i
          data = cookies[:cart_items].sub('{"food_id": '+'"'+params[:item][:food_id]+'", "qty": '+ '"'+cart_item["qty"].to_s+'"}','{"food_id": '+'"'+params[:item][:food_id]+'", "qty": '+ '"'+update_qty.to_s+'"}')
          check = false
          break
        end
      end
      if check
        data = cookies[:cart_items].sub(']','')
        data += ',{"food_id": '+'"'+params[:item][:food_id]+'", "qty": '+ '"'+params[:item][:qty]+'"}]'
      end
      cookies.delete :cart_items
      cookies[:cart_items] = { :value => data, :expires => Time.now + 24*3600}
    else
      item = '[{"food_id": '+'"'+params[:item][:food_id]+'", "qty": '+ '"'+params[:item][:qty]+'"}]'
      cookies[:cart_items] = { :value => item, :expires => Time.now + 24*3600}
    end
    cookies[:cur_qty] = { :value => params[:cur_qty], :expires => Time.now + 24*3600}
    cookies[:cur_cost] = { :value => params[:cur_cost], :expires => Time.now + 24*3600}
    respond_to do |format|
      response = { :status => "200", :message => "success" }
      format.json  { render :json => response }
    end
  end
end
