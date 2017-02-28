require 'test_helper'

class PreguntaControllerTest < ActionDispatch::IntegrationTest
  test "should get preguntas" do
    get pregunta_preguntas_url
    assert_response :success
  end

end
