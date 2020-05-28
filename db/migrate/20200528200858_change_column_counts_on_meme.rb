class ChangeColumnCountsOnMeme < ActiveRecord::Migration[6.0]
  def up
    change_column :memes, :votes_count, :integer, :default => 0
  end

  def down
    change_column :memes, :votes_count, :integer
  end
end
