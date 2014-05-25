class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.integer :listtarea_id
      t.string :nombre
      t.text :description
      t.datetime :fplanvcto
      t.datetime :ffin
      t.integer :responsable
      t.float :avance
      t.integer :ttarea
      t.integer :etarea
      t.integer :privada
      t.integer :trepeticion

      t.timestamps
    end
  end
end
