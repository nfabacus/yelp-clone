require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "doesn't let user submit a name that's too short" do
    restaurant = Restaurant.new(name: 'KF')
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end
end
