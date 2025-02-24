require "rails_helper"

RSpec.describe User, type: :model do
  fixtures :users

  describe "user" do
    it "is not valid without a name" do
      user = users(:john)
      user.name = nil

      expect(user).not_to be_valid
    end

    it "is not valid without an email" do
      user = users(:john)
      user.email = nil

      expect(user).not_to be_valid
    end

    it "is not valid with empty a password" do
      user = users(:john)
      user.password = ""

      expect(user).not_to be_valid
    end

    it "is not valid with a duplicate email" do
      user1 = users(:john)
      user2 = described_class.new(email: user1.email, password: "password123")

      expect(user2).not_to be_valid
    end
  end
end
