class Ride < ApplicationRecord
  belongs_to :origin, class_name: 'Location', inverse_of: :ride_origins
  belongs_to :destination, class_name: 'Location', inverse_of: :ride_destinations
  has_many :rider_rides
  has_many :riders, through: :rider_rides
end
