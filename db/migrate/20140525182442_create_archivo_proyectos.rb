class CreateArchivoProyectos < ActiveRecord::Migration
  def change
    create_table :archivo_proyectos do |t|
      t.integer :archivo_id
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
