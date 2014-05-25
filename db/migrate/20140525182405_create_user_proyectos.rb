class CreateUserProyectos < ActiveRecord::Migration
  def change
    create_table :user_proyectos do |t|
      t.integer :user_id
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
