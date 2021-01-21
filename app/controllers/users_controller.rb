class UsersController < ApplicationController
  def show
    @events_by_month = Event.includes(:user).group_by { |event| event.start_time.strftime("%B") } 
  end
end
