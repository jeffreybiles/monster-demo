class UserResource < JSONAPI::Resource
  attributes :name, :email

  has_many :team_memberships
end
