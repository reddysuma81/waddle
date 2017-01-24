class RemovePublishedFromPosts < ActiveRecord::Migration[5.0]
  def up
    remove_column :posts, :published, default: false
  end

  def down
    remove_column :posts, :published, default: false
  end
end
