class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :email
      t.string :password_digest
      t.datetime :fvctopass
      t.string :role
      t.string :direccion
      t.string :telefono
      t.string :celphone
      t.integer :timezone
      t.string :photofile
      t.integer :empresa_id

      t.timestamps
    end
  end
end
