require "test_helper"

class NearControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get near_index_url
    assert_response :success
  end
end
