require 'test_helper'

class UserrolesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userroles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userrole" do
    assert_difference('Userrole.count') do
      post :create, :userrole => { }
    end

    assert_redirected_to userrole_path(assigns(:userrole))
  end

  test "should show userrole" do
    get :show, :id => userroles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => userroles(:one).to_param
    assert_response :success
  end

  test "should update userrole" do
    put :update, :id => userroles(:one).to_param, :userrole => { }
    assert_redirected_to userrole_path(assigns(:userrole))
  end

  test "should destroy userrole" do
    assert_difference('Userrole.count', -1) do
      delete :destroy, :id => userroles(:one).to_param
    end

    assert_redirected_to userroles_path
  end
end
