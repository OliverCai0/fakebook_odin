class AddDetailsToFriendRequest < ActiveRecord::Migration[7.0]
  def change
    change_table(:friend_requests) do |t|
      t.references :sender, foreign_key: {to_table: 'users'}
      t.references :receiver, foreign_key: {to_table: 'users'}
      t.boolean :accepted, default: false
    end
  end
end
