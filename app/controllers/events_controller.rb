class EventsController < ApplicationController
  def index
    @events = Event.includes(:user)
  end
  
  def new
    @event = Event.new
  end

  def create
    event = Event.create!(event_params)
    @events = Event.includes(:user)
  end
 
  def edit
    @event = Event.find(params[:id])
    
  end

  def update
    event = Event.update(event_params)
    @events = Event.includes(:user)
  end

  private
  def event_params
    params.require(:event).permit(:title, :start_time, :end_time).merge(user_id: current_user.id)
  end
end
