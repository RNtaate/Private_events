require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe 'POST create' do
    it "Should save current_user_id inside session hash" do
      user1 = User.create(name: "Rayhan")
      post "/sessions", :params => {name: "Rayhan"}
      expect(session[:current_user_id]).to eq(user1.id)
    end
  end
end
