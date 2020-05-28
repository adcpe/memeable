class ChangeColumnMemesCountOnUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :memes_count, :integer, :default => 0
  end
end
