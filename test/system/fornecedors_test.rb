require "application_system_test_case"

class FornecedorsTest < ApplicationSystemTestCase
  setup do
    @fornecedor = fornecedors(:one)
  end

  test "visiting the index" do
    visit fornecedors_url
    assert_selector "h1", text: "Fornecedors"
  end

  test "should create fornecedor" do
    visit fornecedors_url
    click_on "New fornecedor"

    fill_in "Bairro", with: @fornecedor.bairro
    fill_in "Cidade", with: @fornecedor.cidade
    fill_in "Descricao", with: @fornecedor.descricao
    fill_in "Endereco", with: @fornecedor.endereco
    fill_in "Nome", with: @fornecedor.nome
    fill_in "Numero", with: @fornecedor.numero
    click_on "Create Fornecedor"

    assert_text "Fornecedor was successfully created"
    click_on "Back"
  end

  test "should update Fornecedor" do
    visit fornecedor_url(@fornecedor)
    click_on "Edit this fornecedor", match: :first

    fill_in "Bairro", with: @fornecedor.bairro
    fill_in "Cidade", with: @fornecedor.cidade
    fill_in "Descricao", with: @fornecedor.descricao
    fill_in "Endereco", with: @fornecedor.endereco
    fill_in "Nome", with: @fornecedor.nome
    fill_in "Numero", with: @fornecedor.numero
    click_on "Update Fornecedor"

    assert_text "Fornecedor was successfully updated"
    click_on "Back"
  end

  test "should destroy Fornecedor" do
    visit fornecedor_url(@fornecedor)
    click_on "Destroy this fornecedor", match: :first

    assert_text "Fornecedor was successfully destroyed"
  end
end
