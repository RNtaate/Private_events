class EventsController < ApplicationController
  def index
    @events = Event.pluck(:description)
  end
end
