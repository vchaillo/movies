json.array!(@actors) do |actor|
  json.extract! actor, :id, :fullname, :birth, :bio, :image
  json.url actor_url(actor, format: :json)
end
