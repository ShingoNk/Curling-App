class AddEventToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :teve, :string
  end
end
