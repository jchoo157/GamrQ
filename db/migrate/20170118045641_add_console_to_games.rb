class AddConsoleToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :console, :string
  end
end
