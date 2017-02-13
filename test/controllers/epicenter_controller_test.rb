require 'test_helper'

class EpicenterControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get epicenter_feed_url
    assert_response :success
  end

  test "should get show_post" do
    get epicenter_show_post_url
    assert_response :success
  end

  test "should get user_posts" do
    get epicenter_user_posts_url
    assert_response :success
  end

end
