require 'test_helper'

class AnswerGroupsControllerTest < ActionController::TestCase
  setup do
    @answer_group = answer_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_group" do
    assert_difference('AnswerGroup.count') do
      post :create, answer_group: { answer_id: @answer_group.answer_id, mchat_test_id: @answer_group.mchat_test_id, option: @answer_group.option }
    end

    assert_redirected_to answer_group_path(assigns(:answer_group))
  end

  test "should show answer_group" do
    get :show, id: @answer_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_group
    assert_response :success
  end

  test "should update answer_group" do
    patch :update, id: @answer_group, answer_group: { answer_id: @answer_group.answer_id, mchat_test_id: @answer_group.mchat_test_id, option: @answer_group.option }
    assert_redirected_to answer_group_path(assigns(:answer_group))
  end

  test "should destroy answer_group" do
    assert_difference('AnswerGroup.count', -1) do
      delete :destroy, id: @answer_group
    end

    assert_redirected_to answer_groups_path
  end
end
