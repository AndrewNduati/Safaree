require 'test_helper'

class TouristTest < ActiveSupport::TestCase
 

  def setup
    
    @tourist = Tourist.new(fullname: "Example Tourist",  email: "user@example.com", telephone: "1234567890")

  end
  
  test "Name should not be blank" do
    
    @tourist.fullname = "    "
    assert_not @tourist.valid?

  end


  test "Email should not be blank" do
    
    @tourist.email = "    "
    assert_not @tourist.valid?

  end

  test "Telephone Number should not be blank" do
    
    @tourist.telephone = "    "
    # Use assert_not over assert false
    assert_not @tourist.valid?

  end

end
