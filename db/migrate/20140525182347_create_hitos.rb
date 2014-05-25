class CreateHitos < ActiveRecord::Migration
  def change
    create_table :hitos do |t|
      t.integer :proyecto_id
      t.string :nombre
      t.text :description
      t.datetime :ffin
      t.integer :responsable_id
      t.integer :thito
      t.integer :ehito
      t.integer :privada

      t.timestamps
    end
  end
end
