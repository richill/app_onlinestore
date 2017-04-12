class StaticPagesController < ApplicationController
  before_action :set_product

  def homepg
  end

  def aboutpg
  end

  private
    def set_product
      @search = Product.search(params[:q])
      @products = @search.result(distinct: true)
    end
end
