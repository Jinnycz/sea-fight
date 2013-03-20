class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :user
      t.references :game

      t.timestamps
    end
    add_index :tables, :user_id
    add_index :tables, :game_id
  end
end
