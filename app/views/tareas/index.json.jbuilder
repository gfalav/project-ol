json.array!(@tareas) do |tarea|
  json.extract! tarea, :id, :listtarea_id, :nombre, :description, :fplanvcto, :ffin, :responsable, :avance, :ttarea, :etarea, :privada, :trepeticion
  json.url tarea_url(tarea, format: :json)
end
