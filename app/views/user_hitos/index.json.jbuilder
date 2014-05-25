json.array!(@user_hitos) do |user_hito|
  json.extract! user_hito, :id, :user_id, :hito_id
  json.url user_hito_url(user_hito, format: :json)
end
