require 'test_helper'

class TbDetalleSolicitudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_detalle_solicitud = tb_detalle_solicituds(:one)
  end

  test "should get index" do
    get tb_detalle_solicituds_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_detalle_solicitud_url
    assert_response :success
  end

  test "should create tb_detalle_solicitud" do
    assert_difference('TbDetalleSolicitud.count') do
      post tb_detalle_solicituds_url, params: { tb_detalle_solicitud: {  } }
    end

    assert_redirected_to tb_detalle_solicitud_url(TbDetalleSolicitud.last)
  end

  test "should show tb_detalle_solicitud" do
    get tb_detalle_solicitud_url(@tb_detalle_solicitud)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_detalle_solicitud_url(@tb_detalle_solicitud)
    assert_response :success
  end

  test "should update tb_detalle_solicitud" do
    patch tb_detalle_solicitud_url(@tb_detalle_solicitud), params: { tb_detalle_solicitud: {  } }
    assert_redirected_to tb_detalle_solicitud_url(@tb_detalle_solicitud)
  end

  test "should destroy tb_detalle_solicitud" do
    assert_difference('TbDetalleSolicitud.count', -1) do
      delete tb_detalle_solicitud_url(@tb_detalle_solicitud)
    end

    assert_redirected_to tb_detalle_solicituds_url
  end
end
