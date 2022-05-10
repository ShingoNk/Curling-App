class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ustatus, :string
  end
end
