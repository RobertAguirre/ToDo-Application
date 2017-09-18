class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to todo_lists_path
    end
  end

  def show
  end
end
