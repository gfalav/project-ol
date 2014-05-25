json.array!(@archivo_listtareas) do |archivo_listtarea|
  json.extract! archivo_listtarea, :id, :archivo_id, :listtarea_id
  json.url archivo_listtarea_url(archivo_listtarea, format: :json)
end
