class TeamMembershipSerializer < ActiveModel::Serializer
  has_one :user
  has_one :monster
end
