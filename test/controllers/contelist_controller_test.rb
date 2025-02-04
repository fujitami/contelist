require "test_helper"

class ContelistControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get contelist_top_url
    assert_response :success
  end
end
