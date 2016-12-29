class PriceManagementsController < ApplicationController
  before_action :set_price_management, only: [:show, :edit, :update, :destroy]

  # GET /price_managements
  # GET /price_managements.json
  def index
    @search = Search.new(:price_management, params[:search], :per_page =>9999999 )
    @search.order = 'updated_at DESC'
    @price_managements = @search.run
  end

  # GET /price_managements/1
  # GET /price_managements/1.json
  def show
  end

  # GET /price_managements/new
  def new
    @price_management = PriceManagement.new(product: Product.find_by(product_no: params[:product_no]))
  end

  # GET /price_managements/1/edit
  def edit
  end

  # POST /price_managements
  # POST /price_managements.json
  def create
    @price_management = PriceManagement.new(price_management_params)
    sku = @price_management.product_no+"-"+@price_management.level
    product_id = @price_management.product_id
    respond_to do |format|
      if @price_management.save
        if Sku.where(product_id: product_id).empty?
	        Sku.new(product_id: product_id, name: sku, level: @price_management.level).save
          BabyManagement.new(product_id: product_id, sku: sku).save
        end
        format.html { redirect_to @price_management, notice: '新增价格数据完成' }
        format.json { render :show, status: :created, location: @price_management }
      else
        format.html { render :new }
        format.json { render json: @price_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_managements/1
  # PATCH/PUT /price_managements/1.json
  def update
    respond_to do |format|
      if @price_management.update(price_management_params)
        product_id = @price_management.product_id
        sku = @price_management.product_no+"-"+@price_management.level
        BabyManagement.update(product_id, :sku => sku)
        format.html { redirect_to @price_management, notice: '编辑价格数据完成' }
        format.json { render :show, status: :ok, location: @price_management }
      else
        format.html { render :edit }
        format.json { render json: @price_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_managements/1
  # DELETE /price_managements/1.json
  def destroy
    @price_management.destroy
    respond_to do |format|
      format.html { redirect_to price_managements_url, notice: 'Price management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_management
      @price_management = PriceManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_management_params
      params.require(:price_management).permit(:level, :product_id, :platform, :face_price, :nomember_price, :member_price, :warehouse_id, :price_unit_id, :currency_id)
    end
end
