class EventsController < ApplicationController
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
    if signed_in?
      @event = current_user.created_events.build(event_params)
      @attendee = params[:event_attendance][:attendee_id]
      @event.save

      @attendee.each do |x|
        if !(x.empty?)
          @user = User.find(x)
          @event.attendees << @user
        end
      end

      redirect_to root_path
    end
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
