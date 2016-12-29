class BabyManagementsController < ApplicationController
  before_action :set_baby_management, only: [:show, :edit, :update, :destroy]

  # GET /baby_managements
  # GET /baby_managements.json
  def index
    @search = Search.new(:baby_management, params[:search], :per_page =>100 )
    @search.order = 'updated_at DESC'
    @baby_managements = @search.run
    @baby_management = BabyManagement.new
  end

  # GET /baby_managements/1
  # GET /baby_managements/1.json
  def show
  end

  # GET /baby_managements/new
  def new
    @baby_management = BabyManagement.new
  end

  # GET /baby_managements/1/edit
  def edit
    @baby_managements = BabyManagement.order('updated_at DESC')
  end

  # POST /baby_managements
  # POST /baby_managements.json
  def create
    @baby_management = BabyManagement.new(baby_management_params)

    respond_to do |format|
      if @baby_management.save
        format.html { redirect_to @baby_management, notice: 'Baby management was successfully created.' }
        format.json { render :show, status: :created, location: @baby_management }
      else
        format.html { render :new }
        format.json { render json: @baby_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baby_managements/1
  # PATCH/PUT /baby_managements/1.json
  def update
    $product_id = BabyManagement.find(params[:id]).product_id
    $baby_no = params[:baby_no]
    BabyManagement.update(params[:id], :baby_no => $baby_no)
    respond_to do |format|
      format.html { redirect_to baby_managements_path, notice: '宝贝编号编辑完成' }
    end
  end

  # DELETE /baby_managements/1
  # DELETE /baby_managements/1.json
  def destroy
    @baby_management.destroy
    respond_to do |format|
      format.html { redirect_to baby_managements_url, notice: 'Baby management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby_management
      if params[:baby_id]
        params[:id] = params[:baby_id]
      end
      @baby_management = BabyManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baby_management_params
      params.require(:baby_management).permit(:baby_no)
    end
end
