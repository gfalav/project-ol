json.array!(@user_proyectos) do |user_proyecto|
  json.extract! user_proyecto, :id, :user_id, :proyecto_id
  json.url user_proyecto_url(user_proyecto, format: :json)
end
