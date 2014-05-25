class CreateUserHitos < ActiveRecord::Migration
  def change
    create_table :user_hitos do |t|
      t.integer :user_id
      t.integer :hito_id

      t.timestamps
    end
  end
end
