json.array!(@venues) do |venue|
  json.extract! venue, :id, :address, :category, :closed, :contacts, :desc, :email, :instructions, :latitude, :longitude, :name, :note, :telephone, :website, :file_iphone_url, :file_iphone_2x_url
  if @club
    json.url club_venue_url(@club, venue, format: :json)
  else
    json.club do
        json.id venue.club_id
    end
    json.url venue_url(venue, format: :json)
  end
end
