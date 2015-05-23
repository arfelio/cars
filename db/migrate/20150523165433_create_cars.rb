class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :condition

      t.timestamps
    end
  end
end
