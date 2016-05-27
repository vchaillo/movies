json.array!(@writers) do |writer|
  json.extract! writer, :id, :fullname, :birth, :bio, :image
  json.url writer_url(writer, format: :json)
end
