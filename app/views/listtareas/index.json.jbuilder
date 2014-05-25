json.array!(@listtareas) do |listtarea|
  json.extract! listtarea, :id, :proyecto_id, :lista, :descripcion, :elista, :lider_id, :falta, :fvcto, :fuce, :fcierre
  json.url listtarea_url(listtarea, format: :json)
end
