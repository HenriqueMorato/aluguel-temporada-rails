require 'rails_helper'

feature 'Admin Register Property Type' do
  scenario 'sucessfully' do
    visit root_path
    click_on 'Registrar Tipo de Imóvel'

    fill_in 'Nome', with: 'Casa de Praia'

    click_on 'Cadastrar'
    
    expect(page).to have_content 'Tipo de imóvel cadastrado com sucesso'
    expect(page).to have_content 'Casa de Praia'
  end  
  scenario 'and fills nothing' do
    visit new_property_type_path
    click_on 'Cadastrar'

    expect(page).to have_content 'Você deve preencher o nome da propriedade'    
  end
end