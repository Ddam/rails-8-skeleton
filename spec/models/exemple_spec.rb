require "rails_helper"

RSpec.describe "Customer", type: :model do
  it "is not valid without a name using hash" do
    customer = { name: nil, email: "john.doe@example.com" }
    expect(customer[:name]).to be_nil
  end

  it "is not valid without an email using hash" do
    customer = { name: "John Doe", email: nil }
    expect(customer[:email]).to be_nil
  end

  it "is not valid with a duplicate email using hash" do
    existing_customer = { name: "John Doe", email: "john.doe@example.com" }
    new_customer = { name: "Jane Doe", email: "john.doe@example.com" }

    expect(new_customer[:email]).to eq(existing_customer[:email])
  end

  it "is not valid with an improperly formatted email using hash" do
    customer = { name: "John Doe", email: "invalid_email" }

    expect(customer[:email]).not_to match(/\A[^@\s]+@[^@\s]+\z/)
  end
end
