class ChangeColumnMemesCountOnUser < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :memes_count, :integer, :default => 0
  end

  def down
    change_column :users, :memes_count, :integer
  end
end
