require 'test_helper'

class SystemsControllerTest < ActionController::TestCase
  test "should get system" do
    get :system
    assert_response :success
  end

end
