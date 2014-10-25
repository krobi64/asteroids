class CreateHazards < ActiveRecord::Migration
  def change
    create_table :hazards do |t|
      t.string :designation
      t.string :year_range
      t.integer :potential_impacts
      t.float :impact_probability
      t.decimal :velocity
      t.decimal :h_mag
      t.decimal :est_diameter
      t.decimal :palermo_cum
      t.decimal :palermo_max
      t.integer :torino

      t.timestamps
    end
  end
end
