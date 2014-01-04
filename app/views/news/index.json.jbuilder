json.array!(@news) do |news|
  json.extract! news, :id, :title, :subtitle, :venue_id, :finish, :show, :start

  if @venue
	json.url club_venue_news_url(@club, @venue, news, format: :json)
  else
    json.venue do
		json.id news.venue_id
	end
	json.url news_url(news, format: :json)
  end
end
