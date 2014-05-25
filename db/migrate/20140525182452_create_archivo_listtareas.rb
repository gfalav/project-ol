class CreateArchivoListtareas < ActiveRecord::Migration
  def change
    create_table :archivo_listtareas do |t|
      t.integer :archivo_id
      t.integer :listtarea_id

      t.timestamps
    end
  end
end
