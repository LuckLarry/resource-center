class ProductManagementsController < ApplicationController
  before_action :set_product_management, only: [:show, :edit, :update, :destroy]

  # GET /product_managements
  # GET /product_managements.json
  def index
    @product_managements = ProductManagement.all
  end

  # GET /product_managements/1
  # GET /product_managements/1.json
  def show
  end

  # GET /product_managements/new
  def new
    @product_management = ProductManagement.new
  end

  # GET /product_managements/1/edit
  def edit
  end

  # POST /product_managements
  # POST /product_managements.json
  def create
    @product_management = ProductManagement.new(product_management_params)

    respond_to do |format|
      if @product_management.save
        format.html { redirect_to @product_management, notice: 'Product management was successfully created.' }
        format.json { render :show, status: :created, location: @product_management }
      else
        format.html { render :new }
        format.json { render json: @product_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_managements/1
  # PATCH/PUT /product_managements/1.json
  def update
    respond_to do |format|
      if @product_management.update(product_management_params)
        format.html { redirect_to @product_management, notice: 'Product management was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_management }
      else
        format.html { render :edit }
        format.json { render json: @product_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_managements/1
  # DELETE /product_managements/1.json
  def destroy
    @product_management.destroy
    respond_to do |format|
      format.html { redirect_to product_managements_url, notice: 'Product management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_management
      @product_management = ProductManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_management_params
      params.require(:product_management).permit(:sku, :tag, :position)
    end
end
