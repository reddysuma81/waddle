class AddStateToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :state, :string, default: "unpublished"
  end
end
