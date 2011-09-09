require 'test_helper'

class PackageinfosControllerTest < ActionController::TestCase
  setup do
    @packageinfo = packageinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packageinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packageinfo" do
    assert_difference('Packageinfo.count') do
      post :create, :packageinfo => @packageinfo.attributes
    end

    assert_redirected_to packageinfo_path(assigns(:packageinfo))
  end

  test "should show packageinfo" do
    get :show, :id => @packageinfo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @packageinfo.to_param
    assert_response :success
  end

  test "should update packageinfo" do
    put :update, :id => @packageinfo.to_param, :packageinfo => @packageinfo.attributes
    assert_redirected_to packageinfo_path(assigns(:packageinfo))
  end

  test "should destroy packageinfo" do
    assert_difference('Packageinfo.count', -1) do
      delete :destroy, :id => @packageinfo.to_param
    end

    assert_redirected_to packageinfos_path
  end
end
