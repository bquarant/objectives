require 'test_helper'

class StemsControllerTest < ActionController::TestCase
  setup do
    @stem = stems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stem" do
    assert_difference('Stem.count') do
      post :create, stem: { content: @stem.content, exam_id: @stem.exam_id }
    end

    assert_redirected_to stem_path(assigns(:stem))
  end

  test "should show stem" do
    get :show, id: @stem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stem
    assert_response :success
  end

  test "should update stem" do
    patch :update, id: @stem, stem: { content: @stem.content, exam_id: @stem.exam_id }
    assert_redirected_to stem_path(assigns(:stem))
  end

  test "should destroy stem" do
    assert_difference('Stem.count', -1) do
      delete :destroy, id: @stem
    end

    assert_redirected_to stems_path
  end
end
