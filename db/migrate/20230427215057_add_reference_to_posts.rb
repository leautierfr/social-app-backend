class AddReferenceToPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :user_id, :integer
    add_reference :posts, :user
  end
end
