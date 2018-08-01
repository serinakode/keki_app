class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :charge]
  before_action :authenticate_user!
  # GET /products
  # GET /products.json
  def index
    if params[:search_address].present?
      @products = Product.cakes_near(params[:search_address])
    else 
      @products = Product.all
    end 
  end

  # GET /products/1
  # GET /products/1.json
  def show
    # @products = Product.find(params[:id])
  end


  def charge
    
    @order = Order.new
    @order.user = current_user 
    @order.product = @product
    @order.price = @product.price

    @order.charge_id = charge

    # 
    
    if @order.save

    end
    
    # redirect to my_orders
  end



  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    authorize @product 
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user

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

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
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

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :description, :price, :address, :image, :quantity_available, :no_longer_selling)
    end
end
