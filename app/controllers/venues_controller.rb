class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  before_action :set_club
  # GET /venues
  # GET /venues.json
  def index
    @venues = Venue.all
  end

  # GET /venues/1
  # GET /venues/1.json
  def show
  end

  # GET /venues/new
  def new
    @venue = Venue.new
  end

  # GET /venues/1/edit
  def edit
  end

  # POST /venues
  # POST /venues.json
  def create
    @venue = Venue.new(venue_params)
    @venue.club_id = @club.id
    respond_to do |format|
      if @venue.save
        format.html { redirect_to [@club, @venue], notice: 'Venue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venue }
      else
        format.html { render action: 'new' }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venues/1
  # PATCH/PUT /venues/1.json
  def update
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to [@club, @venue], notice: 'Venue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue.destroy
    respond_to do |format|
      format.html { redirect_to club_venues_url(@club) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
    end
    
    def set_club
      if params[:club_id]
        @club = Club.find(params[:club_id])
      end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_params
      params.require(:venue).permit(:address, :category, :closed, :contacts, :desc, :email, :instructions, :latitude, :longitude, :name, :note, :path, :telephone, :website, :image_id)
    end
end
