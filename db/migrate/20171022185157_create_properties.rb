class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :location
      t.string :area
      t.text :description
      t.decimal :daily_rate
      t.integer :rooms
      t.integer :minimum_rent_days
      t.integer :maximum_rent_days
      t.integer :maximum_occupancy
      t.text :usage_rules
      t.text :photo

      t.timestamps
    end
  end
end
