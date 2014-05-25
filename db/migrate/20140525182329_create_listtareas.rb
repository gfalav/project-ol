class CreateListtareas < ActiveRecord::Migration
  def change
    create_table :listtareas do |t|
      t.integer :proyecto_id
      t.string :lista
      t.text :descripcion
      t.string :elista
      t.integer :lider_id
      t.datetime :falta
      t.datetime :fvcto
      t.datetime :fuce
      t.datetime :fcierre

      t.timestamps
    end
  end
end
