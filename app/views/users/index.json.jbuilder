json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_digest, :fullname, :nickname, :avatar, :role
  json.url user_url(user, format: :json)
end
