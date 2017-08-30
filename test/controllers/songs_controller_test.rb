require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get songs_edit_url
    assert_response :success
  end

  test "should get new" do
    get songs_new_url
    assert_response :success
  end

end
