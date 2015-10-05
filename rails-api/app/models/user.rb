class User < ActiveRecord::Base
  has_many :team_memberships
  has_many :monsters, through: :team_memberships
end
