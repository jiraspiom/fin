require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "creating a Account" do
    visit accounts_url
    click_on "New Account"

    check "Conta favorita" if @account.conta_favorita
    check "Conta status" if @account.conta_status
    fill_in "Informacoes", with: @account.informacoes
    fill_in "Moeda", with: @account.moeda
    fill_in "Name", with: @account.name
    fill_in "Nota", with: @account.nota
    fill_in "Saldoini", with: @account.saldoini
    fill_in "Tipo", with: @account.tipo
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "updating a Account" do
    visit accounts_url
    click_on "Edit", match: :first

    check "Conta favorita" if @account.conta_favorita
    check "Conta status" if @account.conta_status
    fill_in "Informacoes", with: @account.informacoes
    fill_in "Moeda", with: @account.moeda
    fill_in "Name", with: @account.name
    fill_in "Nota", with: @account.nota
    fill_in "Saldoini", with: @account.saldoini
    fill_in "Tipo", with: @account.tipo
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "destroying a Account" do
    visit accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account was successfully destroyed"
  end
end
