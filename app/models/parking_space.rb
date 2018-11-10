require 'elasticsearch/model'

class ParkingSpace < ApplicationRecord
  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks

  validates :parking_type, :latitude, :longitude, presence: true
  validates :latitude, uniqueness: { scope: :longitude }
end
