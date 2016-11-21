require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get box" do
    get search_box_url
    assert_response :success
  end

  test "should get results" do
    get search_results_url
    assert_response :success
  end

end
