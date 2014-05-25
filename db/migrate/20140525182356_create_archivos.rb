class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :nombre
      t.datetime :falta
      t.integer :user_id

      t.timestamps
    end
  end
end
