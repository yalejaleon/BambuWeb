require 'test_helper'

class TbFormularioClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_formulario_cliente = tb_formulario_clientes(:one)
  end

  test "should get index" do
    get tb_formulario_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_formulario_cliente_url
    assert_response :success
  end

  test "should create tb_formulario_cliente" do
    assert_difference('TbFormularioCliente.count') do
      post tb_formulario_clientes_url, params: { tb_formulario_cliente: { codigo: @tb_formulario_cliente.codigo, codigo_cliente: @tb_formulario_cliente.codigo_cliente, codigo_formulario: @tb_formulario_cliente.codigo_formulario } }
    end

    assert_redirected_to tb_formulario_cliente_url(TbFormularioCliente.last)
  end

  test "should show tb_formulario_cliente" do
    get tb_formulario_cliente_url(@tb_formulario_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_formulario_cliente_url(@tb_formulario_cliente)
    assert_response :success
  end

  test "should update tb_formulario_cliente" do
    patch tb_formulario_cliente_url(@tb_formulario_cliente), params: { tb_formulario_cliente: { codigo: @tb_formulario_cliente.codigo, codigo_cliente: @tb_formulario_cliente.codigo_cliente, codigo_formulario: @tb_formulario_cliente.codigo_formulario } }
    assert_redirected_to tb_formulario_cliente_url(@tb_formulario_cliente)
  end

  test "should destroy tb_formulario_cliente" do
    assert_difference('TbFormularioCliente.count', -1) do
      delete tb_formulario_cliente_url(@tb_formulario_cliente)
    end

    assert_redirected_to tb_formulario_clientes_url
  end
end
