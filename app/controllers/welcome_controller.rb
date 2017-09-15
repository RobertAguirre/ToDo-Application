class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to welcome_show_path
    end
  end

  def show
  end
end
