class ChangeColumnCountsOnMeme < ActiveRecord::Migration[6.0]
  def change
    change_column :memes, :votes_count, :integer, :default => 0
  end
end
