class AddConstrainsToPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :title, :string, :limit => 50
    add_index :posts, :title, :unique => true
    change_column_null :posts, :title, false
    change_column_null :posts, :content, false
  end
end
