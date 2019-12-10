require 'test_helper'

class HeldsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get helds_new_url
    assert_response :success
  end

end
