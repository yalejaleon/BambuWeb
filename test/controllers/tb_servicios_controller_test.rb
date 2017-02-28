require 'test_helper'

class TbServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_servicio = tb_servicios(:one)
  end

  test "should get index" do
    get tb_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_servicio_url
    assert_response :success
  end

  test "should create tb_servicio" do
    assert_difference('TbServicio.count') do
      post tb_servicios_url, params: { tb_servicio: {  } }
    end

    assert_redirected_to tb_servicio_url(TbServicio.last)
  end

  test "should show tb_servicio" do
    get tb_servicio_url(@tb_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_servicio_url(@tb_servicio)
    assert_response :success
  end

  test "should update tb_servicio" do
    patch tb_servicio_url(@tb_servicio), params: { tb_servicio: {  } }
    assert_redirected_to tb_servicio_url(@tb_servicio)
  end

  test "should destroy tb_servicio" do
    assert_difference('TbServicio.count', -1) do
      delete tb_servicio_url(@tb_servicio)
    end

    assert_redirected_to tb_servicios_url
  end
end
