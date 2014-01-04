json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :title, :subtitle, :image_id, :finish, :start, :website
  json.url sponsor_url(sponsor, format: :json)
end
