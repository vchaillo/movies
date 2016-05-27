json.array!(@movies) do |movie|
  json.extract! movie, :id, :title_vo, :title_vf, :year, :quality, :language, :bw, :image, :synopsis
  json.url movie_url(movie, format: :json)
end
