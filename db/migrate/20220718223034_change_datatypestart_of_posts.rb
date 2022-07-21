class ChangeDatatypestartOfPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :start, :datetime
  end
end
