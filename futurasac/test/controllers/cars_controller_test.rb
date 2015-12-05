require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test "should get car" do
    get :car
    assert_response :success
  end

end
