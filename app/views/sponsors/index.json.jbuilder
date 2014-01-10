json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :title, :subtitle, :image_id, :finish, :start, :website, :file_iphone_url, :file_iphone_2x_url
  json.url sponsor_url(sponsor, format: :json)
end
