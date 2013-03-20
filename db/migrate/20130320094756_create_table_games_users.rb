class CreateTableGamesUsers < ActiveRecord::Migration
  def change
    create_table :games_users do |t|
      t.references :user
      t.references :game

      t.timestamps
    end
    add_index :games_users, :user_id
    add_index :games_users, :game_id
  end
end
