class AddAuthor < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string
  end
end
