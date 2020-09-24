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
    @event = Event.create(event_params)
    redirect_to event_path(@event.id)
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
