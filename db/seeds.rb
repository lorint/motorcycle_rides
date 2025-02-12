# Seeds file for /Users/lorin/motorcycle_rides/storage/development.sqlite3:

  puts 'Seeding: Location'
locations_1 = Location.create(name: "Phoenix", created_at: "2025-02-12 05:04:52.984767", updated_at: "2025-02-12 05:04:52.984767")
locations_2 = Location.create(name: "Sedona", created_at: "2025-02-12 05:05:03.569564", updated_at: "2025-02-12 05:05:03.569564")
locations_3 = Location.create(name: "Albuquerque", created_at: "2025-02-12 05:05:14.676746", updated_at: "2025-02-12 05:05:14.676746")
locations_4 = Location.create(name: "Los Alamos", created_at: "2025-02-12 05:05:24.291618", updated_at: "2025-02-12 05:05:24.291618")
locations_5 = Location.create(name: "Los Angeles", created_at: "2025-02-12 05:05:33.303080", updated_at: "2025-02-12 05:05:33.303080")
  puts 'Seeding: Ride'
rides_1 = Ride.create(origin_id: locations_2, destination_id: locations_3, start: "2025-02-15 12:00:00", end: "2025-02-16 12:00:00", miles: 500, created_at: "2025-02-12 05:06:32.064827", updated_at: "2025-02-12 05:06:32.064827")
rides_2 = Ride.create(origin_id: locations_4, destination_id: locations_3, start: "2025-02-22 12:00:00", end: "2025-02-23 12:00:00", miles: 100, created_at: "2025-02-12 05:13:04.443283", updated_at: "2025-02-12 05:13:04.443283")
  puts 'Seeding: Rider'
riders_1 = Rider.create(name: "James", phone_number: "", created_at: "2025-02-12 05:06:50.748000", updated_at: "2025-02-12 05:06:50.748000")
riders_2 = Rider.create(name: "Sally", phone_number: "", created_at: "2025-02-12 05:06:56.357932", updated_at: "2025-02-12 05:06:56.357932")
riders_3 = Rider.create(name: "Maurice", phone_number: "", created_at: "2025-02-12 05:07:03.689927", updated_at: "2025-02-12 05:07:03.689927")

  puts 'Seeding: RiderRide'
rider_rides_1 = RiderRide.create(rider: riders_1, ride: rides_1, created_at: "2025-02-12 05:07:58.803527", updated_at: "2025-02-12 05:07:58.803527")
rider_rides_2 = RiderRide.create(rider: riders_2, ride: rides_1, created_at: "2025-02-12 05:08:08.247583", updated_at: "2025-02-12 05:08:08.247583")
rider_rides_3 = RiderRide.create(rider: riders_2, ride: rides_2, created_at: "2025-02-12 05:15:05.082583", updated_at: "2025-02-12 05:15:05.082583")
rider_rides_4 = RiderRide.create(rider: riders_3, ride: rides_2, created_at: "2025-02-12 05:15:23.813850", updated_at: "2025-02-12 05:15:23.813850")
