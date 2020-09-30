require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET new' do
    it 'should render a create new User page' do
      get '/users/new'
      expect(response).to be_successful
    end
  end

  describe 'GET show' do
    it 'should show all previously attended and upcoming events' do
      creator1 = User.create(name: 'Ironman')
      creator2 = User.create(name: 'Thor')
      creator3 = User.create(name: 'Hulk')
      event1 = Event.create(description: 'Big party', date: Date.today - 5, creator_id: creator2.id)
      event2 = Event.create(description: 'Huge party', date: Date.today + 5, creator_id: creator3.id)

      creator1.attended_events << event1
      creator1.attended_events << event2
      get "/users/#{creator1.id}"
      expect(response).to be_successful
    end
  end
end
