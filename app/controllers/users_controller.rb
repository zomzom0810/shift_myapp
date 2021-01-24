class UsersController < ApplicationController
  def show
    @events_by_month = Event.includes(:user).order(start_time: "ASC").group_by { |event| event.start_time.strftime("%Y年%-m月") } 
  end
end
