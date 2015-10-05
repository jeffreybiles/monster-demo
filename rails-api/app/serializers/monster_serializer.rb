class MonsterSerializer < ActiveModel::Serializer
  attributes :name, :level, :image_url

  has_many :team_memberships
end
