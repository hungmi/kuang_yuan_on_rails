require 'test_helper'

class StoneControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get stone_show_url
    assert_response :success
  end

  test "should get index" do
    get stone_index_url
    assert_response :success
  end

end
