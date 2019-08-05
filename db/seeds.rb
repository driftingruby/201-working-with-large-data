# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Vehicle.create(
    name: Faker::Vehicle.make_and_model,
    vin: Faker::Vehicle.vin
  )
end

def vehicle_tracker_record(id)
  {
    vehicle_id: id,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    speeding: [true, false].sample,
    maintenance_required: [true, false].sample,
    recorded_on: rand(10.years).seconds.ago
  }
end

100.times do
  Vehicle.all.each do |vehicle|
    start_time = Time.now.to_i
    records = [].tap do |array|
      10_000.times do
        # VehicleTracker.create(vehicle_tracker_record(vehicle.id))
        array << vehicle_tracker_record(vehicle.id)
      end
    end
    VehicleTracker.insert_all(records)
    end_time = Time.now.to_i
    puts "Created 10,000 logs in #{end_time - start_time}s"
  end
end

