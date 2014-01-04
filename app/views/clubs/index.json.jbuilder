json.array!(@clubs) do |club|
  json.extract! club, :id, :address, :closed, :contacts, :email, :fax, :instructions, :latitude, :longitude, :name, :note, :path, :position, :season, :telephone, :website, :image_id
  json.url club_url(club, format: :json)
end
