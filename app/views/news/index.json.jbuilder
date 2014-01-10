json.array!(@news) do |news|
  json.extract! news, :id, :title, :subtitle, :club_id, :show, :finish, :start
  
  if @club
    json.url club_news_url(@club, news, format: :json)
  else
    json.club do
        json.id news.club_id
    end
    json.url news_url(news, format: :json)
  end
end
