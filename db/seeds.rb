require 'CSV'

CSV.foreach(Rails.root.join('db', 'seeds', 'boston', 'Parking_Meters.csv'), headers: true) do |row|
  binding.pry
  ParkingSpace.create!(
    parking_type: 'metered',
    longitude: row.fetch('X'),
    latitude: row.fetch('Y'),
    street_address: row.fetch('STREET'),
    state: 'MA',
    country: 'USA',
    meter_id: row.fetch('METER_ID').to_i,
  )
end
