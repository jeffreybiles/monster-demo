class MonsterResource < JSONAPI::Resource
  attributes :name, :level, :image_url

  has_many :team_memberships
end
