require 'test_helper'

class MybuttsControllerTest < ActionController::TestCase
  setup do
    @mybutt = mybutts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mybutts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mybutt" do
    assert_difference('Mybutt.count') do
      post :create, mybutt: { cturl: @mybutt.cturl, name: @mybutt.name }
    end

    assert_redirected_to mybutt_path(assigns(:mybutt))
  end

  test "should show mybutt" do
    get :show, id: @mybutt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mybutt
    assert_response :success
  end

  test "should update mybutt" do
    patch :update, id: @mybutt, mybutt: { cturl: @mybutt.cturl, name: @mybutt.name }
    assert_redirected_to mybutt_path(assigns(:mybutt))
  end

  test "should destroy mybutt" do
    assert_difference('Mybutt.count', -1) do
      delete :destroy, id: @mybutt
    end

    assert_redirected_to mybutts_path
  end
end
