class UsersController < ApplicationController
  def show
    @events_by_month = current_user.events.order(start_time: "ASC").group_by { |event| event.start_time.strftime("%Y年%-m月") } 
  end
end
