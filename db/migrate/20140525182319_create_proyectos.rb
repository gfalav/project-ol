class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.integer :empresa_id
      t.string :nombre
      t.text :description
      t.string :comitente
      t.string :lider
      t.datetime :fcierre
      t.string :logofile
      t.string :eproyecto

      t.timestamps
    end
  end
end
