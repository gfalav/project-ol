json.array!(@archivos) do |archivo|
  json.extract! archivo, :id, :nombre, :falta, :user_id
  json.url archivo_url(archivo, format: :json)
end
