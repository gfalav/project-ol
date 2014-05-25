class CreateArchivoTareas < ActiveRecord::Migration
  def change
    create_table :archivo_tareas do |t|
      t.integer :archivo_id
      t.integer :tarea_id

      t.timestamps
    end
  end
end
