class FontTypesController < ApplicationController
  before_action :set_font_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  # GET /font_types
  # GET /font_types.json
  def index
    @font_types = FontType.all
  end

  # GET /font_types/1
  # GET /font_types/1.json
  def show
  end

  # GET /font_types/new
  def new
    @font_type = FontType.new
  end

  # GET /font_types/1/edit
  def edit
  end

  # POST /font_types
  # POST /font_types.json
  def create
    @font_type = FontType.new(font_type_params)

    respond_to do |format|
      if @font_type.save
        format.html { redirect_to @font_type, notice: 'Font type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @font_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @font_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /font_types/1
  # PATCH/PUT /font_types/1.json
  def update
    respond_to do |format|
      if @font_type.update(font_type_params)
        format.html { redirect_to @font_type, notice: 'Font type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @font_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /font_types/1
  # DELETE /font_types/1.json
  def destroy
    @font_type.destroy
    respond_to do |format|
      format.html { redirect_to font_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_font_type
      @font_type = FontType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def font_type_params
      params.require(:font_type).permit(:name)
    end

  protected
    def authenticate
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        md5_of_password = Digest::MD5.hexdigest(password)
        username == 'sunki' && md5_of_password == '67202ef37a8e9657c7d05db96c85c3d1'
      end
    end
end
