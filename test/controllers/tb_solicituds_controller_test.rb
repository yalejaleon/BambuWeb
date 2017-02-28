require 'test_helper'

class TbSolicitudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_solicitud = tb_solicituds(:one)
  end

  test "should get index" do
    get tb_solicituds_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_solicitud_url
    assert_response :success
  end

  test "should create tb_solicitud" do
    assert_difference('TbSolicitud.count') do
      post tb_solicituds_url, params: { tb_solicitud: {  } }
    end

    assert_redirected_to tb_solicitud_url(TbSolicitud.last)
  end

  test "should show tb_solicitud" do
    get tb_solicitud_url(@tb_solicitud)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_solicitud_url(@tb_solicitud)
    assert_response :success
  end

  test "should update tb_solicitud" do
    patch tb_solicitud_url(@tb_solicitud), params: { tb_solicitud: {  } }
    assert_redirected_to tb_solicitud_url(@tb_solicitud)
  end

  test "should destroy tb_solicitud" do
    assert_difference('TbSolicitud.count', -1) do
      delete tb_solicitud_url(@tb_solicitud)
    end

    assert_redirected_to tb_solicituds_url
  end
end
