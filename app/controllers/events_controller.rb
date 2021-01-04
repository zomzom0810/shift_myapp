class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end

  def create
    event = Event.create!(event_params)
    @events = Event.all
  end
 
  private
  def event_params
    params.require(:event).permit(:title, :start_time, :end_time).merge(user_id: current_user.id)
  end
end
