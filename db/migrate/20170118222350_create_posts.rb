class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string      :header
      t.string      :tag_line
      t.string      :image
      t.text        :body
      t.datetime    :published_at

      t.timestamps
    end
  end
end
