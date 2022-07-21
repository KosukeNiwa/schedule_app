class ChangeDatatypeendOfPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :end, :datetime
  end
end
