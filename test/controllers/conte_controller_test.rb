require "test_helper"

class ConteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conte_index_url
    assert_response :success
  end
end
