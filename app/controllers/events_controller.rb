class EventsController < ApplicationController
  before_action :authenticate!, except: %i[index]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    @attendee = params[:event_attendance][:attendee_id]
    @event.save

    @attendee.each do |x|
      unless x.empty?
        @user = User.find(x)
        @event.attendees << @user
      end
    end

    redirect_to root_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @attendee = params[:event_attendance][:attendee_id]
    @event.update(event_params)

    @attendee.each do |x|
      unless x.empty?
        @user = User.find(x)
        @event.attendees << @user unless @event.attendees.include?(@user)
      end
    end

    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end

  def authenticate!
    redirect_to new_session_path unless signed_in?
  end
end
