require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "Validates user's name presence" do
    it "Should be valid" do
      @user = User.create(name: "Rahan")
      expect(@user.save).to be true
    end

    it "Should NOT be valid" do
      @user = User.create(name: "")
      expect(@user.save).not_to be true
    end
  end

  context "Validates user's name uniqueness" do
    let!(:user1){User.create(name: "Rayhan")}
    it "Should be valid" do
      user2 = User.create(name: "Ray")
      expect(user2.save).to be true
    end

    it "Should be invalid" do
      user2 = User.create(name: "Rayhan")
      expect(user2.save).not_to be true
    end
  end

  context "associations between user and event model" do
    it "user can create many events" do
      u = User.create(name: 'Ironman')
      event1 = u.created_events.create(description: 'Big party', date: Date.today+5)
      event2 = u.created_events.create(description: 'Huge party', date: Date.today+15)
      expect(Event.first.description).to eql('Big party')
    end
  end

  context "associations between user and event_attendance model" do
    it 'user can have many attended_ events' do
      organizer = User.create(name: 'Thor')
      event1 = Event.create(description: 'Big party', date: Date.today+5, creator_id: organizer.id)
      event2 = Event.create(description: 'Huge party', date: Date.today+15, creator_id: organizer.id)
      u = User.create(name: 'Ironman')
      u.attended_events << event1
      u.attended_events << event2
      expect(u.attended_events.pluck(:description)).to eql(['Big party', 'Huge party'])
    end

  end
end
