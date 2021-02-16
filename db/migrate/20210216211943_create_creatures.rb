class CreateCreatures < ActiveRecord::Migration[6.0]
  def change
    create_table :creatures do |t|
      t.string :birds
      t.string :mammals
      t.string :insects
      t.string :others

      t.timestamps
    end
  end
end
