class TeamMembershipResource < JSONAPI::Resource
  has_one :user
  has_one :monster
end
