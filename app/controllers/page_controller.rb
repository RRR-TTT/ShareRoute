class PageController < ApplicationController
	before_action :authenticate_user!
  def index
		@user = current_user
		@routes = @user.user_route
		@favorite_users = @user.favorite_users unless @user.favorite_users.nil?
  end

  def show
  end
end
