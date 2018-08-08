require "application_system_test_case"

class SenhasTest < ApplicationSystemTestCase
  setup do
    @senha = senhas(:one)
  end

  test "visiting the index" do
    visit senhas_url
    assert_selector "h1", text: "Senhas"
  end

  test "creating a Senha" do
    visit senhas_url
    click_on "New Senha"

    fill_in "Comanda", with: @senha.comanda
    click_on "Create Senha"

    assert_text "Senha was successfully created"
    click_on "Back"
  end

  test "updating a Senha" do
    visit senhas_url
    click_on "Edit", match: :first

    fill_in "Comanda", with: @senha.comanda
    click_on "Update Senha"

    assert_text "Senha was successfully updated"
    click_on "Back"
  end

  test "destroying a Senha" do
    visit senhas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Senha was successfully destroyed"
  end
end
