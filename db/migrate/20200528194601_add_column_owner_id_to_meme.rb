class AddColumnOwnerIdToMeme < ActiveRecord::Migration[6.0]
  def change
    change_table :memes do |t|
      t.references :owner, null: false, foreign_key: { to_table: 'users' }
    end
  end
end
