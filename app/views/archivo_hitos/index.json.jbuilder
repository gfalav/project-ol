json.array!(@archivo_hitos) do |archivo_hito|
  json.extract! archivo_hito, :id, :archivo_id, :hito_id
  json.url archivo_hito_url(archivo_hito, format: :json)
end
