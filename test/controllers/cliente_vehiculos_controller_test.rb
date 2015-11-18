require 'test_helper'

class ClienteVehiculosControllerTest < ActionController::TestCase
  setup do
    @cliente_vehiculo = cliente_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_vehiculo" do
    assert_difference('ClienteVehiculo.count') do
      post :create, cliente_vehiculo: { cliente_id: @cliente_vehiculo.cliente_id, vehiculo_id: @cliente_vehiculo.vehiculo_id }
    end

    assert_redirected_to cliente_vehiculo_path(assigns(:cliente_vehiculo))
  end

  test "should show cliente_vehiculo" do
    get :show, id: @cliente_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_vehiculo
    assert_response :success
  end

  test "should update cliente_vehiculo" do
    patch :update, id: @cliente_vehiculo, cliente_vehiculo: { cliente_id: @cliente_vehiculo.cliente_id, vehiculo_id: @cliente_vehiculo.vehiculo_id }
    assert_redirected_to cliente_vehiculo_path(assigns(:cliente_vehiculo))
  end

  test "should destroy cliente_vehiculo" do
    assert_difference('ClienteVehiculo.count', -1) do
      delete :destroy, id: @cliente_vehiculo
    end

    assert_redirected_to cliente_vehiculos_path
  end
end
