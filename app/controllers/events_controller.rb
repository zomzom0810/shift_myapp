class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:edit, :update, :destroy]

  def index
    @events = current_user.events.order(start_time: "ASC")
    @event = Event.new
    @user = User.find_by(hourly_wage: params[:hourly_wage])
  end

  def create
    @events = current_user.events.order(start_time: "ASC")
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "シフトを登録しました。"
      redirect_to root_path
    else
      flash.now[:danger] = "登録に失敗しました。"
      render :index
    end
  end

  def edit
  end

  def update
    if event = Event.update(event_params)
      flash[:success] = "シフトを編集しました"
      redirect_to root_path
    else
      flash.now[:danger] = "編集に失敗しました。"
      render :index
    end
  end

  def destroy
    @event.destroy
    flash[:danger] = "シフトを削除しました。"
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_time, :end_time).merge(user_id: current_user.id )
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
