class RemoveGroupIdFromUserTeams < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_teams, :group_id, :integer
  end
end
