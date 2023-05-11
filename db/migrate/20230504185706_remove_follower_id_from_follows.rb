class RemoveFollowerIdFromFollows < ActiveRecord::Migration[7.0]
  def change
    remove_column :follows, :follower_id, :integer
    add_reference :follows, :user
  end
end
