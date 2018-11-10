class CreateParkingSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_spaces do |t|
      t.string :label, default: ""
      t.string :parking_type
      t.decimal :latitude, null: false
      t.decimal :longitude, null: false
      t.string :street_address
      t.string :state
      t.string :country
      t.string :zip_code
      t.decimal :rate
      t.string :meter_status
      t.string :space_status
      t.boolean :street_cleaning
      t.boolean :tow_away
      t.boolean :pre_pay
      t.string :free_periods, array: true
      t.string :pay_periods, array: true
      t.string :meter_vendor
      t.integer :meter_id
      t.string :meter_type
      t.integer :minute_limit
    end

    add_index :parking_spaces, [:latitude, :longitude], unique: true
  end
end
