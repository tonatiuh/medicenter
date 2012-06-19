require 'test_helper'

class ReconocimientosControllerTest < ActionController::TestCase
  setup do
    @reconocimiento = reconocimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reconocimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reconocimiento" do
    assert_difference('Reconocimiento.count') do
      post :create, :reconocimiento => { :cardiobascular => @reconocimiento.cardiobascular, :digestivo => @reconocimiento.digestivo, :endocrino => @reconocimiento.endocrino, :examan_id => @reconocimiento.examan_id, :muscular => @reconocimiento.muscular, :neurologico => @reconocimiento.neurologico, :otros => @reconocimiento.otros, :respiratorio => @reconocimiento.respiratorio, :urogenital => @reconocimiento.urogenital }
    end

    assert_redirected_to reconocimiento_path(assigns(:reconocimiento))
  end

  test "should show reconocimiento" do
    get :show, :id => @reconocimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reconocimiento
    assert_response :success
  end

  test "should update reconocimiento" do
    put :update, :id => @reconocimiento, :reconocimiento => { :cardiobascular => @reconocimiento.cardiobascular, :digestivo => @reconocimiento.digestivo, :endocrino => @reconocimiento.endocrino, :examan_id => @reconocimiento.examan_id, :muscular => @reconocimiento.muscular, :neurologico => @reconocimiento.neurologico, :otros => @reconocimiento.otros, :respiratorio => @reconocimiento.respiratorio, :urogenital => @reconocimiento.urogenital }
    assert_redirected_to reconocimiento_path(assigns(:reconocimiento))
  end

  test "should destroy reconocimiento" do
    assert_difference('Reconocimiento.count', -1) do
      delete :destroy, :id => @reconocimiento
    end

    assert_redirected_to reconocimientos_path
  end
end
