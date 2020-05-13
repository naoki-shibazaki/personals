require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_create_url
    assert_response :success
  end

end
