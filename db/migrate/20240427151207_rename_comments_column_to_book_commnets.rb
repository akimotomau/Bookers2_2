class RenameCommentsColumnToBookCommnets < ActiveRecord::Migration[6.1]
  def change
    rename_column :book_comments, :comments, :comment
  end
end
