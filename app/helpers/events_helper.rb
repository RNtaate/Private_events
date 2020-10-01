module EventsHelper
  def show_edit_link(event)
    link_to 'Edit', edit_event_path(event.id) if current_user == event.creator
  end
end
