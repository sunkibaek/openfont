require 'test_helper'

class FontTypesControllerTest < ActionController::TestCase
  setup do
    @font_type = font_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:font_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create font_type" do
    assert_difference('FontType.count') do
      post :create, font_type: { name: @font_type.name }
    end

    assert_redirected_to font_type_path(assigns(:font_type))
  end

  test "should show font_type" do
    get :show, id: @font_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @font_type
    assert_response :success
  end

  test "should update font_type" do
    patch :update, id: @font_type, font_type: { name: @font_type.name }
    assert_redirected_to font_type_path(assigns(:font_type))
  end

  test "should destroy font_type" do
    assert_difference('FontType.count', -1) do
      delete :destroy, id: @font_type
    end

    assert_redirected_to font_types_path
  end
end
