require 'test_helper'

class CookbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cookbooks_index_url
    assert_response :success
  end

  test "should get new" do
    get cookbooks_new_url
    assert_response :success
  end

end
