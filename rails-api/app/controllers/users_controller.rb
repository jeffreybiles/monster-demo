class UsersController < ApplicationController
  before_action :authorize_user

  def resource_class_name
    'user'
  end
end
