require 'test_helper'

class PoemCommentsControllerTest < ActionController::TestCase
  setup do
    @poem_comment = poem_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poem_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poem_comment" do
    assert_difference('PoemComment.count') do
      post :create, poem_comment: { end: @poem_comment.end, html: @poem_comment.html, markup: @poem_comment.markup, poem_id: @poem_comment.poem_id, start: @poem_comment.start, user: @poem_comment.user }
    end

    assert_redirected_to poem_comment_path(assigns(:poem_comment))
  end

  test "should show poem_comment" do
    get :show, id: @poem_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poem_comment
    assert_response :success
  end

  test "should update poem_comment" do
    patch :update, id: @poem_comment, poem_comment: { end: @poem_comment.end, html: @poem_comment.html, markup: @poem_comment.markup, poem_id: @poem_comment.poem_id, start: @poem_comment.start, user: @poem_comment.user }
    assert_redirected_to poem_comment_path(assigns(:poem_comment))
  end

  test "should destroy poem_comment" do
    assert_difference('PoemComment.count', -1) do
      delete :destroy, id: @poem_comment
    end

    assert_redirected_to poem_comments_path
  end
end
