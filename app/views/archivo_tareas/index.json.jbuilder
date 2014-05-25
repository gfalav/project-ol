json.array!(@archivo_tareas) do |archivo_tarea|
  json.extract! archivo_tarea, :id, :archivo_id, :tarea_id
  json.url archivo_tarea_url(archivo_tarea, format: :json)
end
