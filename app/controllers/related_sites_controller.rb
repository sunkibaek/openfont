class RelatedSitesController < ApplicationController
  before_action :set_related_site, only: [:show, :edit, :update, :destroy]

  # GET /related_sites
  # GET /related_sites.json
  def index
    @related_sites = RelatedSite.all
  end

  # GET /related_sites/1
  # GET /related_sites/1.json
  def show
  end

  # GET /related_sites/new
  def new
    @related_site = RelatedSite.new
  end

  # GET /related_sites/1/edit
  def edit
  end

  # POST /related_sites
  # POST /related_sites.json
  def create
    @related_site = RelatedSite.new(related_site_params)

    respond_to do |format|
      if @related_site.save
        format.html { redirect_to @related_site, notice: 'Related site was successfully created.' }
        format.json { render action: 'show', status: :created, location: @related_site }
      else
        format.html { render action: 'new' }
        format.json { render json: @related_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /related_sites/1
  # PATCH/PUT /related_sites/1.json
  def update
    respond_to do |format|
      if @related_site.update(related_site_params)
        format.html { redirect_to @related_site, notice: 'Related site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @related_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /related_sites/1
  # DELETE /related_sites/1.json
  def destroy
    @related_site.destroy
    respond_to do |format|
      format.html { redirect_to related_sites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_related_site
      @related_site = RelatedSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def related_site_params
      params.require(:related_site).permit(:name, :description)
    end
end
