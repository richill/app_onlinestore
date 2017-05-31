class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @search = Product.search(params[:q])
    @products = @search.result(distinct: true)
  end

  def show
    @products = Product.all
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

  # --------------- products ---------------

  def sales
    @products = Product.sale_items
  end
  
  def clothes
    @products = Product.clothes
  end

  def clothes_dresses
    @products = Product.clothes_dresses
  end

  def clothes_jeans_and_denims
    @products = Product.clothes_jeans_denims
  end

  def bags
    @products = Product.bags
  end

  def bags_shoulder_bags
    @products = Product.bags_shoulder_bags
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
