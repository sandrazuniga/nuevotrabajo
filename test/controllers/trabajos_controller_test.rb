require "test_helper"

class TrabajosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajo = trabajos(:one)
  end

  test "should get index" do
    get trabajos_url
    assert_response :success
  end

  test "should get new" do
    get new_trabajo_url
    assert_response :success
  end

  test "should create trabajo" do
    assert_difference("Trabajo.count") do
      post trabajos_url, params: { trabajo: { area: @trabajo.area, cargo: @trabajo.cargo, description: @trabajo.description, user_id: @trabajo.user_id } }
    end

    assert_redirected_to trabajo_url(Trabajo.last)
  end

  test "should show trabajo" do
    get trabajo_url(@trabajo)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabajo_url(@trabajo)
    assert_response :success
  end

  test "should update trabajo" do
    patch trabajo_url(@trabajo), params: { trabajo: { area: @trabajo.area, cargo: @trabajo.cargo, description: @trabajo.description, user_id: @trabajo.user_id } }
    assert_redirected_to trabajo_url(@trabajo)
  end

  test "should destroy trabajo" do
    assert_difference("Trabajo.count", -1) do
      delete trabajo_url(@trabajo)
    end

    assert_redirected_to trabajos_url
  end
end
