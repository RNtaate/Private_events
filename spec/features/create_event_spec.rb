require 'rails_helper'

RSpec.describe 'create new event process', type: :feature do
  before :each do
    @user1 = User.create(name: 'User1')
    @user2 = User.create(name: 'User2')
  end

  it 'creates an event' do
    visit '/events'
    click_link 'sign in'
    fill_in 'name', with: @user1.name
    click_button 'log in'
    expect(current_path).to eql(root_path)
    click_link 'Create Event'
    fill_in 'event[description]', with: 'Big party'
    fill_in 'event[date]', with: Date.today + 2
    select = page.find('select#event_attendance_attendee_id')
    select.select '2'
    click_button 'Create Event'
    expect(current_path).to eq(root_path)
    visit '/events/1'
    expect(page).to have_content(@user2.name)
  end
end
