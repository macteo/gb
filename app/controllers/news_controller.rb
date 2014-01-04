class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_action :set_venue
  before_action :set_club

  # GET /news
  # GET /news.json
  def index
    @news = News.all
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)
    @news.venue_id = @venue.id
    respond_to do |format|
      if @news.save
        format.html { redirect_to [@club, @venue, @news], notice: 'News was successfully created.' }
        format.json { render action: 'show', status: :created, location: @news }
      else
        format.html { render action: 'new' }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to [@club, @venue, @news], notice: 'News was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to club_venue_news_index_url(@club, @venue) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_news
      @news = News.find(params[:id])
    end

    def set_club
      if params[:club_id]
        @club = Club.find(params[:club_id])
      end
    end

    def set_venue
      if params[:venue_id]
        @venue = Venue.find(params[:venue_id])
      end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :subtitle, :finish, :show, :start)
    end
end
