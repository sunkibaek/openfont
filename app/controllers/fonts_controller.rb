class FontsController < ApplicationController
  before_action :set_font, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:admin, :new, :edit, :create, :update, :destroy]

  def index
    @fonts = Font.all
  end

  def admin
    @fonts = Font.all
  end

  def show
  end

  def new
    @font = Font.new
  end

  def edit
  end

  def create
    @font = Font.new(font_params)

    respond_to do |format|
      if @font.save
        format.html { redirect_to admin_fonts_path, notice: 'Font was successfully created.' }
        format.json { render action: 'show', status: :created, location: @font }
      else
        format.html { render action: 'new' }
        format.json { render json: @font.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @font.update(font_params)
        format.html { redirect_to admin_fonts_path, notice: 'Font was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @font.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @font.destroy
    respond_to do |format|
      format.html { redirect_to fonts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_font
      @font = Font.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def font_params
      params.require(:font).permit(:name, :family_name, :eot, :woff, :woff2, :ttf, :svg, :font_type_id, :style, :weight, :copyright)
    end

  protected
    def authenticate
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        md5_of_password = Digest::MD5.hexdigest(password)
        username == 'sunki' && md5_of_password == '67202ef37a8e9657c7d05db96c85c3d1'
      end
    end
end
