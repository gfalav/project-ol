class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :direccion1
      t.string :direccion2
      t.string :provincia
      t.string :pais
      t.string :zipcode
      t.string :telefono
      t.string :email
      t.string :website
      t.string :logofile
      t.integer :lider_id

      t.timestamps
    end
  end
end
