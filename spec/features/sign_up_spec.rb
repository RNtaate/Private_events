require 'rails_helper'

describe 'the signup process', type: :feature do
  it 'signs up user' do
    visit '/events'
    click_link 'sign up'
    fill_in 'user[name]', with: 'User1'
    click_button 'Create User'
    expect(current_path).to eql(root_path)
  end
end 