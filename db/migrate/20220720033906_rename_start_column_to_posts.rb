class RenameStartColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :start, :start_day   
  end
end
