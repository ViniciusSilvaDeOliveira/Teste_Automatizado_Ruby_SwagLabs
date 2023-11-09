Quando('estar na pagina de produtos') do 
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true)
end

E('selecionar um filtro de za') do 
    products.filtros.click
    select('Name (Z to A)') 
end

Quando('adicionar produtos') do 
    sleep(10)
    products.add_products.click
end

Entao('validar produtos adicionados e filtro aplicado') do
    sleep(10)
    expect(products.filtros.value).to eql('za')
    expect(products.has_remove_products?)
    sleep(10)
end

Quando('houver redirecionamento para pagina inicial') do
    step 'estar na pagina de produtos'
    products.menu_lateral.click
end

Entao('valido o link na tela') do 
    sleep(5)
    click_link('About')
end