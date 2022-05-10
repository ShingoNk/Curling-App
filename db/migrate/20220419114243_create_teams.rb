class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :tname
      t.string :thole
      t.string :tassoci
      t.string :tfrequ
      t.text :tcomme
      t.string :timage

      t.timestamps
    end
  end
end
