require 'test_helper'

class BoostsControllerTest < ActionController::TestCase
  setup do
    @boost = boosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boost" do
    assert_difference('Boost.count') do
      post :create, boost: { description: @boost.description, name: @boost.name, price: @boost.price }
    end

    assert_redirected_to boost_path(assigns(:boost))
  end

  test "should show boost" do
    get :show, id: @boost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boost
    assert_response :success
  end

  test "should update boost" do
    patch :update, id: @boost, boost: { description: @boost.description, name: @boost.name, price: @boost.price }
    assert_redirected_to boost_path(assigns(:boost))
  end

  test "should destroy boost" do
    assert_difference('Boost.count', -1) do
      delete :destroy, id: @boost
    end

    assert_redirected_to boosts_path
  end
end
