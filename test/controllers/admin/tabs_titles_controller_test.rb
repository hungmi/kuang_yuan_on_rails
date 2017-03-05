require 'test_helper'

class Admin::TabsTitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_tabs_titles_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_tabs_titles_update_url
    assert_response :success
  end

end
