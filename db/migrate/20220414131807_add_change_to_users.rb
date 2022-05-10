class AddChangeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :uname, :string
    add_column :users, :uage, :integer
    add_column :users, :uyoe, :integer
    add_column :users, :uhole, :string
    add_column :users, :uassoci, :string
    add_column :users, :ufrequ, :string
    add_column :users, :ucomme, :text
  end
end
