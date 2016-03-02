class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :authenticate_user_from_token!
  respond_to :json

  def create
    super do |user|
      render json: user, serializer: SessionSerializer, root: "User" and return
    end
  end

  def resource_name
    :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
