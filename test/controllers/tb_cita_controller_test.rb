require 'test_helper'

class TbCitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_citum = tb_cita(:one)
  end

  test "should get index" do
    get tb_cita_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_citum_url
    assert_response :success
  end

  test "should create tb_citum" do
    assert_difference('TbCitum.count') do
      post tb_cita_url, params: { tb_citum: {  } }
    end

    assert_redirected_to tb_citum_url(TbCitum.last)
  end

  test "should show tb_citum" do
    get tb_citum_url(@tb_citum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_citum_url(@tb_citum)
    assert_response :success
  end

  test "should update tb_citum" do
    patch tb_citum_url(@tb_citum), params: { tb_citum: {  } }
    assert_redirected_to tb_citum_url(@tb_citum)
  end

  test "should destroy tb_citum" do
    assert_difference('TbCitum.count', -1) do
      delete tb_citum_url(@tb_citum)
    end

    assert_redirected_to tb_cita_url
  end
end
