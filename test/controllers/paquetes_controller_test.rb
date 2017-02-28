require 'test_helper'

class PaquetesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paquetes_index_url
    assert_response :success
  end

end
