require 'rails_helper'

describe 'the signin process', type: :feature do
  
  before :each do
    User.create(name: 'User1')
  end
  it 'signs in user' do
    visit '/events'
    click_link 'sign in'
    fill_in 'name', with: 'User1'
    click_button 'log in'
    expect(current_path).to eql(root_path)
  end
end 