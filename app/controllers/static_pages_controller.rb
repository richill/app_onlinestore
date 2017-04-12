class StaticPagesController < ApplicationController
  def homepg
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def aboutpg
  end
end
