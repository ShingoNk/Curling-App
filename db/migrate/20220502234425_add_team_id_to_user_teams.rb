class AddTeamIdToUserTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :user_teams, :team_id, :integer
  end
end
