class Users::RegistrationsController < Devise::RegistrationsController
  before_action :set_product

  def new
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  protected
    def set_product
      @search = Product.search(params[:q])
      @products = @search.result(distinct: true)
    end
end

