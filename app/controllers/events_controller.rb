class EventsController < ApplicationController
  def index
    @events = Event.includes(:user)
    @event = Event.new
    @user = User.find_by(hourly_wage: params[:hourly_wage])
    @time = @event.start_end_time
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

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_time, :end_time, :start_date, :end_date).merge(user_id: current_user.id )

  end
end
