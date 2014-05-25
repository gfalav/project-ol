class CreateUserListtareas < ActiveRecord::Migration
  def change
    create_table :user_listtareas do |t|
      t.integer :user_id
      t.integer :listtarea_id

      t.timestamps
    end
  end
end
