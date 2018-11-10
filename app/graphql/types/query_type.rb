Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allParkingSpaces, !types[Types::ParkingSpaceType] do
    resolve -> (_obj, _args, _ctx) { ParkingSpace.all }
  end
end

# module Types
#   class QueryType < Types::BaseObject
#     field :zip_code, String, null: false, description: "the zip code of the parking space"
#     def test_field
#       "Hello World!"
#     end
#   end
# end
#
# class QueryType < GraphQL::Schema::Object
#   description "The query root of this schema"
#
#   # First describe the field signature:
#   field :post, PostType, null: true do
#     description "Find a post by ID"
#     argument :id, ID, required: true
#   end
#
#   # Then provide an implementation:
#   def post(id:)
#     Post.find(id)
#   end
# end
