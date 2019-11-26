require 'test_helper'

class MyprofileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myprofile_index_url
    assert_response :success
  end

end
