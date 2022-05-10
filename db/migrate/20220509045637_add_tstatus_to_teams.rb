class AddTstatusToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :tstatus, :string
  end
end
