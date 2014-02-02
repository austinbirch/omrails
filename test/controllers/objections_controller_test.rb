require 'test_helper'

class ObjectionsControllerTest < ActionController::TestCase
  setup do
    @objection = objections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objection" do
    assert_difference('Objection.count') do
      post :create, objection: { objection: @objection.objection, rebuttal: @objection.rebuttal, tag: @objection.tag, title: @objection.title }
    end

    assert_redirected_to objection_path(assigns(:objection))
  end

  test "should show objection" do
    get :show, id: @objection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objection
    assert_response :success
  end

  test "should update objection" do
    patch :update, id: @objection, objection: { objection: @objection.objection, rebuttal: @objection.rebuttal, tag: @objection.tag, title: @objection.title }
    assert_redirected_to objection_path(assigns(:objection))
  end

  test "should destroy objection" do
    assert_difference('Objection.count', -1) do
      delete :destroy, id: @objection
    end

    assert_redirected_to objections_path
  end
end
