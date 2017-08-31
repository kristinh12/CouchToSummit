require 'rails_helper'

RSpec.describe Hike, type: :model do
  fixtures :hikes

  it "has a duration" do
    hike = hikes(:easy)
    expect(hike.duration).to eq(3.hours)
  end
end
