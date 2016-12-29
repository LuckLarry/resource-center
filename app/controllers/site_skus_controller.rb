class SiteSkusController < ApplicationController
  before_action :set_site_sku, only: [:show, :edit, :update, :destroy]

  # GET /site_skus
  # GET /site_skus.json
  def index
    @search = Search.new(:site_sku, params[:search], :per_page =>100 )
    @search.order = 'updated_at DESC'
    @site_skus = @search.run
    @skus = Sku.all
  end

  # GET /site_skus/1
  # GET /site_skus/1.json
  def show
  end

  # GET /site_skus/new
  def new
    @site_sku = SiteSku.new
  end

  # GET /site_skus/1/edit
  def edit
  end

  # POST /site_skus
  # POST /site_skus.json
  def create
    @site_sku = SiteSku.new(site_sku_params)

    respond_to do |format|
      if @site_sku.save
        format.html { redirect_to @site_sku, notice: 'Product management was successfully created.' }
        format.json { render :show, status: :created, location: @site_sku }
      else
        format.html { render :new }
        format.json { render json: @site_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_skus/1
  # PATCH/PUT /site_skus/1.json
  def update
    
    respond_to do |format|
      if @site_sku.update(site_sku_params)
        format.html { redirect_to site_skus_url, notice: '修改平台成功' }
        format.json { render :show, status: :ok, location: @site_sku }
      else
        format.html { render :edit }
        format.json { render json: @site_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_skus/1
  # DELETE /site_skus/1.json
  def destroy
    @site_sku.destroy
    respond_to do |format|
      format.html { redirect_to site_skus_url, notice: 'Product management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_sku
      if params[:sku_id]
        params[:id] = params[:sku_id]
      end
      @site_sku = SiteSku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_sku_params
      if params[:site_sku][:site_id] == nil
        params[:site_sku][:selected] = false
      end
      
      params.require(:site_sku).permit(:site_id, :sku, :product_id, :selected)
    end
end
