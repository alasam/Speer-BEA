require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'Validations' do

    before(:all) do
      @tweet = Tweet.create(post: "testing123")
    end

    it "should validate that tweet was created" do
      expect(@tweet).to be_valid
    end

    it "should find and read tweet" do
      expect(Tweet.find_by_post("testing123")).to eq(@tweet)
    end

    it "should be able to update tweet" do
      @tweet.update(:post => "update123")
      expect(Tweet.find_by_post("update123")).to eq(@tweet)
    end

    it "should delete tweet" do
      @tweet.destroy
      expect(Tweet.count).to eq(0)
    end

  end
end
