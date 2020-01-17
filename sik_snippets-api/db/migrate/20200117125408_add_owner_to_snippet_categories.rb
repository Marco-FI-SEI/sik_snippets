class AddOwnerToSnippetCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :snippet_categories, :owner, :int
  end
end
