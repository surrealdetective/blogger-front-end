class AddLatestPostColumn < ActiveRecord::Migration
  def up
    add_column :students, :latest_post, :string
  end

  def down
    drop_column :students, :latest_post
  end
end
