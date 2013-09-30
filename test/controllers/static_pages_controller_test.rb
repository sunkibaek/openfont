require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get compatibility" do
    get :compatibility
    assert_response :success
  end

end
