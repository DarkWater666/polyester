require 'test_helper'

class MebelsControllerTest < ActionController::TestCase
  setup do
    @mebel = mebels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mebels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mebel" do
    assert_difference('Mebel.count') do
      post :create, mebel: { autor: @mebel.autor, text: @mebel.text, title: @mebel.title }
    end

    assert_redirected_to mebel_path(assigns(:mebel))
  end

  test "should show mebel" do
    get :show, id: @mebel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mebel
    assert_response :success
  end

  test "should update mebel" do
    patch :update, id: @mebel, mebel: { autor: @mebel.autor, text: @mebel.text, title: @mebel.title }
    assert_redirected_to mebel_path(assigns(:mebel))
  end

  test "should destroy mebel" do
    assert_difference('Mebel.count', -1) do
      delete :destroy, id: @mebel
    end

    assert_redirected_to mebels_path
  end
end
