require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'association between event and user model' do
    it 'event can have only one creator' do
      creator1 = User.create(name: 'Ironman')
      creator2 = User.create(name: 'Thor')
      event = Event.create(description: 'Big party', date: Date.today+5, creator_id: creator1.id)
      event.creator_id = creator2.id
      expect(event.creator_id).not_to eql(creator1.id)
    end
  end

  context 'association between event and event_attendace model' do
    it 'event can have many event_attendances' do
      creator1 = User.create(name: 'Ironman')
      creator2 = User.create(name: 'Thor')
      creator3 = User.create(name: 'Hulk')
      event = Event.create(description: 'Big party', date: Date.today+5, creator_id: creator1.id)
      event.attendees << creator2
      event.attendees << creator3
      expect(event.attendees.pluck(:name)).to eql(['Thor', 'Hulk'])
    end
  end
end
