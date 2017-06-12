class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def show
    @products = Product.random
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @products = Product.all
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  # --------------- products ---------------

  def sales
    @products = Product.random.sale_items
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def latest
    @products = Product.random.new_items
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end
  
  def clothes
    @products = Product.random.clothes
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def clothes_dresses
    @products = Product.random.clothes_dresses
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def clothes_jeans_and_denims
    @products = Product.random.clothes_jeans_denims
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def bags
    @products = Product.random.bags
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def bags_shoulder_bags
    @products = Product.random.bags_shoulder_bags
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  # --------------- products ---------------

  private
    def set_product
      @product = Product.friendly.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :description, :price, :saleprice, :reference, :stock, :sale, :category_accessorytype_id, :category_bagtype_id, :category_brand_id, :category_clothetype_id, :category_shoetype_id, :category_type_id, :product_new, :category_currency_id, :image, category_clothesize_ids: [], category_generalsize_ids: [], category_shoesize_ids: [], category_colour_ids: [])
    end
end
