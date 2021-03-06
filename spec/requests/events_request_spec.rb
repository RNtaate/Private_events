require 'rails_helper'

RSpec.describe 'Events', type: :request do
  before :each do
    creator1 = User.create(name: 'Ironman')
    post '/sessions', params: { 'name' => creator1.name, 'commit' => 'log in' }
  end

  describe 'GET index' do
    it 'should show past and upcoming events' do
      get '/events'
      expect(response).to be_success
    end
  end

  describe 'GET show' do
    it 'should show an event details' do
      event = Event.create(description: 'Big party', date: Date.today + 5, creator_id: 1)
      get "/events/#{event.id}"
      expect(response).to be_success
    end
  end

  describe 'GET new' do
    it 'should render a create event page' do
      get '/events/new'
      expect(response).to be_success
    end
  end

  describe 'POST create' do
    it 'should redirect to root path if successfull' do
      User.create(name: 'Rayhan')
      expect do
        post '/events', params: { 'event' => { 'description' => 'My event', 'date' => '2020-10-10' },
                                  'event_attendance' => { 'attendee_id' => ['', '2'] },
                                  'commit' => 'Create Event' }
      end .to change(Event, :count).by(+1)
    end
  end
end
