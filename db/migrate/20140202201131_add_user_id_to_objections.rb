class AddUserIdToObjections < ActiveRecord::Migration
  def change
    add_column :objections, :user_id, :integer
    add_index :objections, :user_id
  end
end
