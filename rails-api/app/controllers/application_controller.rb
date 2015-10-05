class ApplicationController < ActionController::Base
  respond_to :json

  protect_from_forgery with: :null_session

  # child must define resource_class_name
  # can optionally redefine resource_params, resource, and any individual action

  def index
    @resources = resource_class.send(:all)
    render json: @resources
  end

  def show
    render json: resource
  end

  def create
    @resource = resource_class.send(:create, resource_params)
    render json: @resource
  end

  def update
    resource.update_attributes(resource_params)
    render json: resource
  end

  def destroy
    resource.delete
    head 204
  end

  private

  def resource_class
    resource_class_name.classify.constantize
  end

  def resource_params
    params.require(resource_class_name.to_sym).permit!
  end

  def resource
    @resource ||= resource_class.send(:find, params[:id])
  end

  def authorize_admin
    unless current_user && current_user.admin
      head 401
    end
  end
end
