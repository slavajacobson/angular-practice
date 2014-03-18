require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get airport" do
    get :airport
    assert_response :success
  end

end
