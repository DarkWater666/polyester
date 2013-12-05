require 'test_helper'

class YarnsControllerTest < ActionController::TestCase
  setup do
    @yarn = yarns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yarns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yarn" do
    assert_difference('Yarn.count') do
      post :create, yarn: { autor: @yarn.autor, text: @yarn.text, title: @yarn.title }
    end

    assert_redirected_to yarn_path(assigns(:yarn))
  end

  test "should show yarn" do
    get :show, id: @yarn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yarn
    assert_response :success
  end

  test "should update yarn" do
    patch :update, id: @yarn, yarn: { autor: @yarn.autor, text: @yarn.text, title: @yarn.title }
    assert_redirected_to yarn_path(assigns(:yarn))
  end

  test "should destroy yarn" do
    assert_difference('Yarn.count', -1) do
      delete :destroy, id: @yarn
    end

    assert_redirected_to yarns_path
  end
end
