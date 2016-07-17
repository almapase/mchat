require 'test_helper'

class TypeTestsControllerTest < ActionController::TestCase
  setup do
    @type_test = type_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_test" do
    assert_difference('TypeTest.count') do
      post :create, type_test: { instruction: @type_test.instruction, name: @type_test.name }
    end

    assert_redirected_to type_test_path(assigns(:type_test))
  end

  test "should show type_test" do
    get :show, id: @type_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_test
    assert_response :success
  end

  test "should update type_test" do
    patch :update, id: @type_test, type_test: { instruction: @type_test.instruction, name: @type_test.name }
    assert_redirected_to type_test_path(assigns(:type_test))
  end

  test "should destroy type_test" do
    assert_difference('TypeTest.count', -1) do
      delete :destroy, id: @type_test
    end

    assert_redirected_to type_tests_path
  end
end
