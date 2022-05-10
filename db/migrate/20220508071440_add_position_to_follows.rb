class AddPositionToFollows < ActiveRecord::Migration[6.1]
  def change
    add_column :follows, :position, :string
  end
end
