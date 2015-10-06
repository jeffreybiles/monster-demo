class MonsterSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :image_url

  has_many :team_memberships, embed: :ids, include: true
end
