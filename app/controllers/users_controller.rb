class UsersController < ApplicationController
  def show
    @events = Event.includes(:user)
  end
end
