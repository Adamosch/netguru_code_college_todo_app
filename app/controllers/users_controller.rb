class UsersController < ApplicationController
  before_action :authenticate_user!

  # GET /profile
  def show
    @user = current_user
  end
end
