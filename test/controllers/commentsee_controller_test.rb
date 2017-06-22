require 'test_helper'

class CommentseeControllerTest < ActionDispatch::IntegrationTest
  test "should get https://devcenter.heroku.com/articles/ruby-versions" do
    get commentsee_https://devcenter.heroku.com/articles/ruby-versions_url
    assert_response :success
  end

  test "should get for" do
    get commentsee_for_url
    assert_response :success
  end

  test "should get more" do
    get commentsee_more_url
    assert_response :success
  end

  test "should get information." do
    get commentsee_information._url
    assert_response :success
  end

end
