require 'test_helper'

class TbComentariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tb_comentario = tb_comentarios(:one)
  end

  test "should get index" do
    get tb_comentarios_url
    assert_response :success
  end

  test "should get new" do
    get new_tb_comentario_url
    assert_response :success
  end

  test "should create tb_comentario" do
    assert_difference('TbComentario.count') do
      post tb_comentarios_url, params: { tb_comentario: { codigo: @tb_comentario.codigo, codigo_usuario: @tb_comentario.codigo_usuario, codigo_usuario_web: @tb_comentario.codigo_usuario_web, descripcion: @tb_comentario.descripcion, tipo_comentario: @tb_comentario.tipo_comentario } }
    end

    assert_redirected_to tb_comentario_url(TbComentario.last)
  end

  test "should show tb_comentario" do
    get tb_comentario_url(@tb_comentario)
    assert_response :success
  end

  test "should get edit" do
    get edit_tb_comentario_url(@tb_comentario)
    assert_response :success
  end

  test "should update tb_comentario" do
    patch tb_comentario_url(@tb_comentario), params: { tb_comentario: { codigo: @tb_comentario.codigo, codigo_usuario: @tb_comentario.codigo_usuario, codigo_usuario_web: @tb_comentario.codigo_usuario_web, descripcion: @tb_comentario.descripcion, tipo_comentario: @tb_comentario.tipo_comentario } }
    assert_redirected_to tb_comentario_url(@tb_comentario)
  end

  test "should destroy tb_comentario" do
    assert_difference('TbComentario.count', -1) do
      delete tb_comentario_url(@tb_comentario)
    end

    assert_redirected_to tb_comentarios_url
  end
end
