class SkusController < ApplicationController
  before_action :set_sku, only: [:show, :edit, :update, :destroy]
  before_action :clear_empty_product_images, only: [:update]

  # GET /skus
  # GET /skus.json
  def index
    @skus = Sku.all
  end

  # GET /skus/1
  # GET /skus/1.json
  def show
  end

  # GET /skus/new
  def new
    @sku = Sku.new
  end

  # GET /skus/1/edit
  def edit
    if params[:type] != "site_sku"
      $i = 1
      while $i <= ProductImageCategory.count  do
        if @sku.product_images.where(product_image_category_id: $i).empty?
          if $i >16 and $i <19
            @sku.product_images.build(product_image_category_id: $i, position: ($i+2))
          elsif $i > 18 and $i < 23
            @sku.product_images.build(product_image_category_id: $i, position: ($i+5))
          elsif $i > 22 and $i< 26
            @sku.product_images.build(product_image_category_id: $i, position: ($i+6))
          elsif $i >25 and $i <28
            @sku.product_images.build(product_image_category_id: $i, position: ($i-9))
          elsif $i >27 and $i < 31
            @sku.product_images.build(product_image_category_id: $i, position: ($i-7))
          elsif $i == 31
            @sku.product_images.build(product_image_category_id: $i, position: ($i-3))
          else
            @sku.product_images.build(product_image_category_id: $i, position: $i) 
          end 
        end 
        $i +=1 
      end

      @pro = ProductImageCategory.order("position ASC")
    else
      @skus = Sku.all
      $i = 1
      $k = params[:id]
      while $i <= 9 do
        if @sku.site_skus.where(site_id:$i).empty?
          @sku.site_skus.build(site_id:$i,sku_id: $k,selected: false)
        end
        $i += 1
      end
    end
  end

  # POST /skus
  # POST /skus.json
  def create
    @sku = Sku.new(sku_params)
    respond_to do |format|
      if @sku.save
        format.html { redirect_to product_images_path, notice: '产品图片成功添加' }
        format.json { render :show, status: :ok, location: @product_image }
      else
        format.html { render :new }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skus/1
  # PATCH/PUT /skus/1.json
  def update
    if params[:type] != "site_sku"
      respond_to do |format|
        sku_params[:product_images_attributes].each_value do |va|
          if ProductImage.where(sku_id: @sku.id,id: va[:id].to_i).empty?
          else
            @product_image= ProductImage.find(va[:id].to_i)
            @product_image.update(va)
          end  
        end
        if @sku.update(sku_params)
          format.html { redirect_to product_images_path, notice: '产品图片成功更新' }
          format.json { render :show, status: :ok, location: @product_image }
        else
          format.html { render :edit }
          format.json { render json: @sku.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        SiteSku.where(sku_id:params[:id]).update_all(selected: "false")
        if params[:site_id] != nil
          params[:site_id].each do |site_id|
            if SiteSku.where(site_id:site_id,sku_id:params[:id]).empty?
              @site_sku = SiteSku.new(:site_id => site_id.to_i,:sku_id => params[:id].to_i,:selected => "true")
              if @site_sku.save

              else
                format.html { render :edit }
                format.json { render json: @sku.errors, status: :unprocessable_entity }
              end
            else
              @site_sku = SiteSku.where(site_id:site_id,sku_id:params[:id]).first
              @site_sku.update(sku_id: params[:id],site_id: site_id,selected: "true")
            end
          end
        end
        format.html { redirect_to site_skus_path, notice: '平台选择成功' }
        format.json { render :show, status: :ok, location: @product_image }
      end
    end
  end

  # DELETE /skus/1
  # DELETE /skus/1.json
  def destroy
    @sku.destroy
    respond_to do |format|
      format.html { redirect_to skus_url, notice: 'Sku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sku
      @sku = Sku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sku_params
      params.require(:sku).permit(:product_id, :level, :name, 
                                  product_images_attributes: [:product_image_category_id, :position, :image_file, :id])
    end
    def clear_empty_product_images
      if params[:sku] and params[:sku][:product_images_attributes]
        pics = params[:pic]
        #产品情景图
        pcs =  params[:pc]
        #产品细节图
        pcxs = params[:pcx]
        #产品铺贴图
        pses = params[:ps]
        pis_attrs = params[:sku][:product_images_attributes]
        pis_attrs
        pis_attrs.keys.each do |k|
          if pis_attrs[k]["position"].to_i >1 and pis_attrs[k]["position"].to_i < 15
            if ProductImage.where(sku_id:@sku.id,position:pis_attrs[k]["position"])[0] == nil
              if pis_attrs[k][:image_file].blank?
                if pics != nil and pics != []
                  if pic = pics.shift
                    pis_attrs[k][:image_file] = pic
                  end
                else
                  pis_attrs.delete(k)
                end
              end
            end
          elsif pis_attrs[k]["position"].to_i >15 and pis_attrs[k]["position"].to_i < 19
            if ProductImage.where(sku_id:@sku.id,position:pis_attrs[k]["position"])[0] == nil
              if pis_attrs[k][:image_file].blank?
                if pcs != nil and pcs != []
                  if pc = pcs.shift
                    pis_attrs[k][:image_file] = pc
                  end
                else
                  pis_attrs.delete(k)
                end
              end
            end
          elsif pis_attrs[k]["position"].to_i >19 and pis_attrs[k]["position"].to_i < 24
            if ProductImage.where(sku_id:@sku.id,position:pis_attrs[k]["position"])[0] == nil
              if pis_attrs[k][:image_file].blank?
                if pcxs != nil and pcxs != []
                  if pcx = pcxs.shift
                    pis_attrs[k][:image_file] = pcx
                  end
                else
                  pis_attrs.delete(k)
                end
              end
            end
          elsif pis_attrs[k]["position"].to_i >26 and pis_attrs[k]["position"].to_i < 29
            if ProductImage.where(sku_id:@sku.id,position:pis_attrs[k]["position"])[0] == nil
              if pis_attrs[k][:image_file].blank?
                if pses != nil and pses != []
                  if ps = pses.shift
                    pis_attrs[k][:image_file] = ps
                  end
                else
                  pis_attrs.delete(k)
                end
              end
            end  
          else 
            if pis_attrs[k][:image_file].blank?
              pis_attrs.delete(k)
            end 
          end
        end
      end
    end
end
