class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id] || current_user.id)
    #@items = @user.items
  end

end