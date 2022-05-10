class AddUsexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :usex, :string
  end
end
