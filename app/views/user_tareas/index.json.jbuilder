json.array!(@user_tareas) do |user_tarea|
  json.extract! user_tarea, :id, :user_id, :tarea_id
  json.url user_tarea_url(user_tarea, format: :json)
end
