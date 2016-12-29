class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    if params[:product] || params[:category] || params[:spec]
      @products = Product.where(root_product_category_id: '1').order("updated_at DESC").
       where("name LIKE ? OR product_no LIKE ? OR spec LIKE ?", params[:product], params[:product], params[:spec]).
                  #where(['product_category_id LIKE ?', "%#{params[:category]}%"]).
                  paginate page: params[:page], per_page: 20
      @mosaic = Product.where(root_product_category_id: '101').order("updated_at DESC").
       where("name LIKE ? OR product_no LIKE ? OR spec LIKE ?", params[:product], params[:product], params[:spec]).
                  #where(['product_category_id LIKE ?', "%#{params[:category]}%"]).
                  paginate page: params[:page], per_page: 20
    else
      @products = Product.where(root_product_category_id: '1').order("updated_at DESC").paginate page:params[:page], per_page: 20
      @mosaic = Product.where(root_product_category_id: '101').order("updated_at DESC").paginate page:params[:page], per_page: 20
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
=begin
    $last_data = Product.where(root_product_category_id: params[:root_product_category_id]).last
    params = {}
    params[:product_no] = $last_data.product_no
    params[:name] = $last_data.name
    params[:description] = $last_data.description
    params[:spec] = $last_data.spec
    params[:brand] = $last_data.brand
    params[:material_id] = $last_data.material_id
    params[:surface_craft_id] = $last_data.surface_craft_id
    params[:water_absrp_rate_id] = $last_data.water_absrp_rate_id
    params[:thickness] = $last_data.thickness
    params[:shape_id] = $last_data.shape_id
    params[:color_id] = $last_data.color_id
    params[:cases_per_pallet] = $last_data.cases_per_pallet
    params[:base_unit_id] = $last_data.base_unit_id
    params[:unit_weight] = $last_data.unit_weight
    params[:unit_area] = $last_data.unit_area
    params[:business_unit_id] = $last_data.business_unit_id
    params[:packing_unit] = $last_data.packing_unit
    params[:package_weight] = $last_data.package_weight
    params[:rim_category_id] = $last_data.rim_category_id
    params[:product_category_id] = $last_data.product_category_id
    params[:root_product_category_id] = $last_data.root_product_category_id
=end
    @product = Product.new(session[:last_product_record])
    if rpc_id = params[:root_product_category_id]
      @product.root_product_category_id = rpc_id.to_i
    end
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        session[:last_product_record] = product_params.dup
        format.html { redirect_to @product, notice: '新增产品数据完成' }
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
        format.html { redirect_to @product, notice: '编辑产品数据完成' }
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
      format.html { redirect_to products_url, notice: '删除产品数据完成' }
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
      params.require(:product).permit(:product_category_id, :product_no, :name, :description, :spec, :brand, :material_id, :surface_craft_id, :water_absrp_rate_id, :thickness, :shape_id, :color_id, :cases_per_pallet, :base_unit_id, :unit_weight, :unit_area, :business_unit_id, :packing_unit, :package_weight, :rim_category_id, :root_product_category_id)
    end
end
