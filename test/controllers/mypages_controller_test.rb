require 'test_helper'

class MypagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mypages_new_url
    assert_response :success
  end

end
