require 'test_helper'

class TbClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_cliente = tb_clientes(:one)
  end

  test "should get index" do
    get tb_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_cliente_url
    assert_response :success
  end

  test "should create tb_cliente" do
    assert_difference('TbCliente.count') do
      post tb_clientes_url, params: { tb_cliente: { apellido: @tb_cliente.apellido, cedula: @tb_cliente.cedula, codigo_ciudad: @tb_cliente.codigo_ciudad, correo: @tb_cliente.correo, nombre: @tb_cliente.nombre, telefono: @tb_cliente.telefono } }
    end

    assert_redirected_to tb_cliente_url(TbCliente.last)
  end

  test "should show tb_cliente" do
    get tb_cliente_url(@tb_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_cliente_url(@tb_cliente)
    assert_response :success
  end

  test "should update tb_cliente" do
    patch tb_cliente_url(@tb_cliente), params: { tb_cliente: { apellido: @tb_cliente.apellido, cedula: @tb_cliente.cedula, codigo_ciudad: @tb_cliente.codigo_ciudad, correo: @tb_cliente.correo, nombre: @tb_cliente.nombre, telefono: @tb_cliente.telefono } }
    assert_redirected_to tb_cliente_url(@tb_cliente)
  end

  test "should destroy tb_cliente" do
    assert_difference('TbCliente.count', -1) do
      delete tb_cliente_url(@tb_cliente)
    end

    assert_redirected_to tb_clientes_url
  end
end
