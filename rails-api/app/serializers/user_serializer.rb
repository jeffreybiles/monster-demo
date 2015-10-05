class UserSerializer < ActiveModel::Serializer
  attributes :name, :email

  has_many :team_memberships
end
