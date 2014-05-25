json.array!(@hitos) do |hito|
  json.extract! hito, :id, :proyecto_id, :nombre, :description, :ffin, :responsable_id, :thito, :ehito, :privada
  json.url hito_url(hito, format: :json)
end
