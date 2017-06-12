class StaticPagesController < ApplicationController
  before_action :set_product_search

  def homepg
  end

  def aboutpg
  end

  private
    def set_product_search
      @search = Product.search(params[:q])
      @products = @search.result(distinct: true)
    end
end
