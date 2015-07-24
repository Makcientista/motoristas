require 'test_helper'

class ListasControllerTest < ActionController::TestCase
  test "should get vila_mariana" do
    get :vila_mariana
    assert_response :success
  end

  test "should get vila_guilherme" do
    get :vila_guilherme
    assert_response :success
  end

  test "should get licenca_medica" do
    get :licenca_medica
    assert_response :success
  end

  test "should get falta" do
    get :falta
    assert_response :success
  end

  test "should get recorps" do
    get :recorps
    assert_response :success
  end

  test "should get outras_areas" do
    get :outras_areas
    assert_response :success
  end

  test "should get readaptados" do
    get :readaptados
    assert_response :success
  end

  test "should get aposentados" do
    get :aposentados
    assert_response :success
  end

end
