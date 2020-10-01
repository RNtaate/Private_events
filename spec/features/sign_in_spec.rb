require 'rails_helper'

RSpec.describe 'the signin process', type: :feature do
  before :each do
    @user1 = User.create(name: 'User1')
  end

  it 'signs in user' do
    visit '/events'
    click_link 'sign in'
    fill_in 'name', with: @user1.name
    click_button 'log in'
    expect(current_path).to eql(root_path)
  end
end
