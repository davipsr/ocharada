require 'test_helper'

class CharadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charade" do
    assert_difference('Charade.count') do
      post :create, :charade => { }
    end

    assert_redirected_to charade_path(assigns(:charade))
  end

  test "should show charade" do
    get :show, :id => charades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => charades(:one).to_param
    assert_response :success
  end

  test "should update charade" do
    put :update, :id => charades(:one).to_param, :charade => { }
    assert_redirected_to charade_path(assigns(:charade))
  end

  test "should destroy charade" do
    assert_difference('Charade.count', -1) do
      delete :destroy, :id => charades(:one).to_param
    end

    assert_redirected_to charades_path
  end
end
