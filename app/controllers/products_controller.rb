class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  def index
    @products = Product.where("stock > 0")
    #if there is a cart, pass it to the page for display. Else pass an empty value
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def new
    validate_admin
    @product = Product.new
  end

  def show
  end

  def edit
    validate_admin
  end

  def create
    validate_admin
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :product_image, :stock)
  end

  def validate_admin
    if current_user.admin?
    else
      flash[:notice] = "You are not authorized"
      redirect_to root_path
    end
  end
end
