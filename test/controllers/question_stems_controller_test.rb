require 'test_helper'

class QuestionStemsControllerTest < ActionController::TestCase
  setup do
    @question_stem = question_stems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_stems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_stem" do
    assert_difference('QuestionStem.count') do
      post :create, question_stem: { stem: @question_stem.stem }
    end

    assert_redirected_to question_stem_path(assigns(:question_stem))
  end

  test "should show question_stem" do
    get :show, id: @question_stem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_stem
    assert_response :success
  end

  test "should update question_stem" do
    patch :update, id: @question_stem, question_stem: { stem: @question_stem.stem }
    assert_redirected_to question_stem_path(assigns(:question_stem))
  end

  test "should destroy question_stem" do
    assert_difference('QuestionStem.count', -1) do
      delete :destroy, id: @question_stem
    end

    assert_redirected_to question_stems_path
  end
end
