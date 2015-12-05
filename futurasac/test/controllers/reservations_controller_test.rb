require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  test "should get reservation" do
    get :reservation
    assert_response :success
  end

end
