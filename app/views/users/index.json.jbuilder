json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :email, :fvctopass, :role, :direccion, :telefono, :celphone, :timezone, :photofile, :empresa_id
  json.url user_url(user, format: :json)
end
