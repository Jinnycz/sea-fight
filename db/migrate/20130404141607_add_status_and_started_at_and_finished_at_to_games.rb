class AddStatusAndStartedAtAndFinishedAtToGames < ActiveRecord::Migration
  def change
    add_column :games, :status, :string, default: "pending"
    add_column :games, :started_at, :datetime
    add_column :games, :finished_at, :datetime
  end
end
