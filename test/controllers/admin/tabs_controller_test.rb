require 'test_helper'

class Admin::TabsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_tabs_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_tabs_update_url
    assert_response :success
  end

end
