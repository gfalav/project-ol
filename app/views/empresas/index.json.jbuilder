json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :direccion1, :direccion2, :provincia, :pais, :zipcode, :telefono, :email, :website, :logofile, :lider_id
  json.url empresa_url(empresa, format: :json)
end
