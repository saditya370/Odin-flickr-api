require "test_helper"

class FlickrOdinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flickr_odin_index_url
    assert_response :success
  end
end
