class UpdateLatestPostColumn < ActiveRecord::Migration
  def up
    change_column :students, :latest_post, :text
  end

  def down
    change_column :students, :latest_post, :string
  end
end
