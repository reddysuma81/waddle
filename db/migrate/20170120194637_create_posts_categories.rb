class CreatePostsCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :posts_categories, :id => false do |t|
      t.references :post
      t.references :category
    end
  end
  def self.down
    drop_table :posts_categories
  end
end
