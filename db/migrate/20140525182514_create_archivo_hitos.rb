class CreateArchivoHitos < ActiveRecord::Migration
  def change
    create_table :archivo_hitos do |t|
      t.integer :archivo_id
      t.integer :hito_id

      t.timestamps
    end
  end
end
