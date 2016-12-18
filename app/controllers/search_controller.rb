class SearchController < ApplicationController
  def index
    if params[:key].blank?
      redirect_to '/tim-kiem?key='
    else
      @key = params[:key]
      @foods = Food.new.get_foods_by_name(@key,params[:page])
    end
  end
end
