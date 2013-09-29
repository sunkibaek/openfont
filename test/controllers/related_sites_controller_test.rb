require 'test_helper'

class RelatedSitesControllerTest < ActionController::TestCase
  setup do
    @related_site = related_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:related_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create related_site" do
    assert_difference('RelatedSite.count') do
      post :create, related_site: { description: @related_site.description, name: @related_site.name }
    end

    assert_redirected_to related_site_path(assigns(:related_site))
  end

  test "should show related_site" do
    get :show, id: @related_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @related_site
    assert_response :success
  end

  test "should update related_site" do
    patch :update, id: @related_site, related_site: { description: @related_site.description, name: @related_site.name }
    assert_redirected_to related_site_path(assigns(:related_site))
  end

  test "should destroy related_site" do
    assert_difference('RelatedSite.count', -1) do
      delete :destroy, id: @related_site
    end

    assert_redirected_to related_sites_path
  end
end
