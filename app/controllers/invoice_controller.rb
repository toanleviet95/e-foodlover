class InvoiceController < ApplicationController

  def edit_status
    invoice = Invoice.new.get_invoice_by_id(params[:invoice_id])
    if invoice.update_attributes(status: params[:status])
      income = Income.new.get_income_by_user(params[:user_id])
      if income.update_attributes(amount: params[:income])
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

  def delete
    invoice = Invoice.new.get_invoice_by_id(params[:invoice_id])
    if invoice.destroy
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

  private
  def food_params
    params.require(:food).permit(:name, :price, :summary, :feature, :detail, :promote_price, :stock_qty, :category_id, :image_url_1, :image_url_2, :image_url_3, :status, :user_id, :url)
  end
end
