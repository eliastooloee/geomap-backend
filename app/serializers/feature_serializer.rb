class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :map_id, :feature_data
  belongs_to :map
end
