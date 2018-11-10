Types::ParkingSpaceType = GraphQL::ObjectType.define do
  name "ParkingSpace"
  description "a place to park your car"

  # global_id_field :id

  field :id, types.Int, "The numerical unique ID of the parking space"
  field :label, types.String, "The parking spots display label"
  field :latitude, types.Float, "The latitude of a parking spot"
  field :longitude, types.Float, "The longitude of a parking spot"
  field :street_address, types.String, "The street address of a parking spot"
  field :country, types.String, "The country in which the parking spot is located"
  field :state, types.String, "The state in which the parking spot is located"
  field :zip_code, types.String, "The zip code for the parking spot"
end
