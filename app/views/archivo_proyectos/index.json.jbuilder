json.array!(@archivo_proyectos) do |archivo_proyecto|
  json.extract! archivo_proyecto, :id, :archivo_id, :proyecto_id
  json.url archivo_proyecto_url(archivo_proyecto, format: :json)
end
