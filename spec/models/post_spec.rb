require "rails_helper"

RSpec.describe Post, type: :model do
  let(:post) { create(:post) }

  it "is valid with valid attributes" do
    expect(post).to be_valid
  end

  it "has not name" do
    post.name = nil
    expect(post).to_not be_valid
  end
end
