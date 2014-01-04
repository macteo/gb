json.array!(@images) do |image|
  json.extract! image, :id, :name, :extension, :bundle, :path, :remote
  json.url image_url(image, format: :json)
end
