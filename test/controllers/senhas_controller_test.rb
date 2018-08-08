require 'test_helper'

class SenhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @senha = senhas(:one)
  end

  test "should get index" do
    get senhas_url
    assert_response :success
  end

  test "should get new" do
    get new_senha_url
    assert_response :success
  end

  test "should create senha" do
    assert_difference('Senha.count') do
      post senhas_url, params: { senha: { comanda: @senha.comanda } }
    end

    assert_redirected_to senha_url(Senha.last)
  end

  test "should show senha" do
    get senha_url(@senha)
    assert_response :success
  end

  test "should get edit" do
    get edit_senha_url(@senha)
    assert_response :success
  end

  test "should update senha" do
    patch senha_url(@senha), params: { senha: { comanda: @senha.comanda } }
    assert_redirected_to senha_url(@senha)
  end

  test "should destroy senha" do
    assert_difference('Senha.count', -1) do
      delete senha_url(@senha)
    end

    assert_redirected_to senhas_url
  end
end
