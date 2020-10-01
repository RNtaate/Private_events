require 'rails_helper'

RSpec.describe 'Edit an event process', type: :feature do
  before :each do
    @user1 = User.create(name: 'User1')
    @user2 = User.create(name: 'User2')
    @user3 = User.create(name: 'User3')
    @event = Event.create(description: 'This is a big party', date: Date.today + 6, creator_id: @user1.id)
    @event.attendees << @user2
  end
  it 'Edits an event' do
    visit '/events'
    click_link 'sign in'
    fill_in 'name', with: @user1.name
    click_button 'log in'
    expect(current_path).to eql(root_path)
    click_link 'Show my Invitations'
    click_link @event.description
    click_link 'Edit'
    fill_in 'event[description]', with: 'This is a big party with many people'
    fill_in 'event[date]', with: Date.today + 2
    select = page.find('select#event_attendance_attendee_id')
    select.select '3'
    click_button 'Update Event'
    expect(current_path).to eq(root_path)
    visit '/events/1'
    expect(page).to have_content(@user3.name)
    expect(page).to have_content('This is a big party with many people')
  end
end
