require 'test_helper'

class PacientesControllerTest < ActionController::TestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post :create, :paciente => { :antecedentes_heredofamiliares => @paciente.antecedentes_heredofamiliares, :antecedentes_no_patologicos => @paciente.antecedentes_no_patologicos, :antecedentes_patologicos => @paciente.antecedentes_patologicos, :lugar_de_nacimiento => @paciente.lugar_de_nacimiento, :nombre => @paciente.nombre, :telefono => @paciente.telefono }
    end

    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should show paciente" do
    get :show, :id => @paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @paciente
    assert_response :success
  end

  test "should update paciente" do
    put :update, :id => @paciente, :paciente => { :antecedentes_heredofamiliares => @paciente.antecedentes_heredofamiliares, :antecedentes_no_patologicos => @paciente.antecedentes_no_patologicos, :antecedentes_patologicos => @paciente.antecedentes_patologicos, :lugar_de_nacimiento => @paciente.lugar_de_nacimiento, :nombre => @paciente.nombre, :telefono => @paciente.telefono }
    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete :destroy, :id => @paciente
    end

    assert_redirected_to pacientes_path
  end
end
