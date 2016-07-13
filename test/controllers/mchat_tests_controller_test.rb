require 'test_helper'

class MchatTestsControllerTest < ActionController::TestCase
  setup do
    @mchat_test = mchat_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mchat_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mchat_test" do
    assert_difference('MchatTest.count') do
      post :create, mchat_test: { order: @mchat_test.order, question: @mchat_test.question }
    end

    assert_redirected_to mchat_test_path(assigns(:mchat_test))
  end

  test "should show mchat_test" do
    get :show, id: @mchat_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mchat_test
    assert_response :success
  end

  test "should update mchat_test" do
    patch :update, id: @mchat_test, mchat_test: { order: @mchat_test.order, question: @mchat_test.question }
    assert_redirected_to mchat_test_path(assigns(:mchat_test))
  end

  test "should destroy mchat_test" do
    assert_difference('MchatTest.count', -1) do
      delete :destroy, id: @mchat_test
    end

    assert_redirected_to mchat_tests_path
  end
end
