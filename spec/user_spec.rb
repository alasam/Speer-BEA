require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
 
    it "should save user if all fields filled in correctly" do
      user = User.new(
        username: "test",
        password: "qwerty",
        password_confirmation: "qwerty"
      )
      expect(user).to be_valid
    end
    it "should save user if username fields filled in correctly" do
      user = User.new(
        username: nil,
        password: "qwerty",
        password_confirmation: "qwerty"
      )
      expect(user).to_not be_valid
    end

    it "should save user if password matches password confirmation" do
      user = User.new(
        username: "test",
        password: "qwerty1",
        password_confirmation: "qwerty2"
      )
      expect(user).to_not be_valid
    end

    it "should save user if no existing username is already registered" do
      user1 = User.new(
        username: "test",
        password: "qwerty",
        password_confirmation: "qwerty"
      )
      user2 = User.new(
        username: "test",
        password: "qwerty",
        password_confirmation: "qwerty"
      )
      expect(user2).to be_valid
    end

  end
end