require 'test_helper'

class InsiderTest < ActiveSupport::TestCase
  
  def setup
  	@insider = Insider.new(fullname: "Example Insider", national_id: "12345678",  email: "user@example.com", telephone: "1234567890", price: 22.0)
  end
  
  test "Name should not be blank" do
    
    @insider.fullname = "    "

    assert_not @insider.valid?

  end

  test "Email should not be blank" do
    
    @insider.email = "    "
    
    assert_not @insider.valid?
  end

  test "Telephone Number should not be blank" do
    
    @insider.telephone = "    "
    # Use assert_not over assert false
    assert_not @insider.valid?
  end

end
