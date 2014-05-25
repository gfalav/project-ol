class CreateUserTareas < ActiveRecord::Migration
  def change
    create_table :user_tareas do |t|
      t.integer :user_id
      t.integer :tarea_id

      t.timestamps
    end
  end
end
