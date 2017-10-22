require 'rails_helper'

feature 'Owner Register Property' do
  scenario 'sucessfully' do
    visit root_path
    click_on 'Registrar Imóvel'

    property_type = PropertyType.create(name: 'Casa de Praia')

    fill_in 'Título', with: 'Casa de praia muito bonita'
    select 'Casa de Praia', from: 'Tipo do Imóvel'
    fill_in 'Localização', with: 'Praia Grande'
    fill_in 'Área', with: 50
    fill_in 'Descrição', with: 'Pode vir que é garantido'
    fill_in 'Valor da Diária', with: 200.50
    fill_in 'Quantidade de Quartos', with: 2
    fill_in 'Mínimo de Diárias', with: 1
    fill_in 'Máximo de Diárias', with: 20
    fill_in 'Ocupação Máxima', with: 15
    fill_in 'Regras de Uso', with: 'Proibido cão e crianças'
    fill_in 'Foto', with: 'http://via.placeholder.com/600x500'

    click_on 'Cadastrar'

    expect(page).to have_content 'Imóvel cadastrado com sucesso'
    
    expect(page).to have_content 'Casa de praia muito bonita'
    expect(page).to have_content property_type.name
    expect(page).to have_content 'Praia Grande'
    expect(page).to have_content '50m²'
    expect(page).to have_content 'Pode vir que é garantido'
    expect(page).to have_content 'R$ 200,50'
    expect(page).to have_content '2'
    expect(page).to have_content '1'
    expect(page).to have_content '20'
    expect(page).to have_content '15'
    expect(page).to have_content 'Proibido cão e crianças'
    expect(page).to have_css("img[src*='http://via.placeholder.com/600x500']")

  end
end