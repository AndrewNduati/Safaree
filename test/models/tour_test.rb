require 'test_helper'

class TourTest < ActiveSupport::TestCase
  def setup_profile
  	@tour = Tour.new(tourist_id: 1, insider_id: 1, activities: "Driving, chilling and Palm wine", rating: 2.0)
  end

  test "the truth" do
    assert true
  end
end
