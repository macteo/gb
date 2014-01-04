json.array!(@news) do |news|
  json.extract! news, :id, :title, :subtitle, :venue_id, :finish, :show, :start
  json.url news_url(news, format: :json)
end
