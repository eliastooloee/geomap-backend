class MapSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :latitude, :longitude, :zoom, :tile_url
  belongs_to :user
end
