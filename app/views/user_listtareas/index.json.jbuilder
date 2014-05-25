json.array!(@user_listtareas) do |user_listtarea|
  json.extract! user_listtarea, :id, :user_id, :listtarea_id
  json.url user_listtarea_url(user_listtarea, format: :json)
end
