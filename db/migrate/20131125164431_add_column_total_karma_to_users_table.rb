class AddColumnTotalKarmaToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :count, :integer
  end
end
