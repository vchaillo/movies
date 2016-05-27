json.array!(@directors) do |director|
  json.extract! director, :id, :fullname, :birth, :bio, :image
  json.url director_url(director, format: :json)
end
