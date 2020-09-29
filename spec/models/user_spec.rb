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
end
