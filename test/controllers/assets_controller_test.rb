require "test_helper"

class AssetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get assets_create_url
    assert_response :success
  end

  test "should get destroy" do
    get assets_destroy_url
    assert_response :success
  end
end
