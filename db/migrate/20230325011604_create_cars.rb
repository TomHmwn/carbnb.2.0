class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :color
      t.string :price_per_day
      t.string :address
      t.string :image
      t.string :car_type
      t.string :fuel_type
      t.string :transmission
      t.string :drive_type
      t.string :year
      t.string :standard_specs
      t.string :kilometrage
      t.string :seats

      t.timestamps
    end
  end
end
