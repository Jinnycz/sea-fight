class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.references :game
      t.references :user
      t.string :status

      t.timestamps
    end
    add_index :invitations, :game_id
    add_index :invitations, :user_id
  end
end
