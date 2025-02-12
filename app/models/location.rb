class Location < ApplicationRecord
  has_many :ride_origins, class_name: 'Ride', foreign_key: :origin_id, inverse_of: :origin
  has_many :ride_destinations, class_name: 'Ride', foreign_key: :destination_id, inverse_of: :destination
end
