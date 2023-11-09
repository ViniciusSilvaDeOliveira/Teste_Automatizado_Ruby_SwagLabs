Dado('estar na pagina inicial') do
    visit('/')
    home.load
    products.load
end

Quando('visualizar os elementos') do
    sleep(5)
    expect(page).to have_current_path('https://www.saucedemo.com/', url: true)
end

Entao('validar que os elementos estao aparecendo')do 
    texto = home.texto_acesso
    expect(texto.text).to eql('Swag Labs')
    sleep 5
end

Quando('efetuo o cadastro') do 
    home.preencher_user_and_password
end

E('efetuo o login') do
    home.efetuar_login
end

Entao('validar redirecionamento') do
    expect(products.texto_produtos.text).to eql('Products')
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true)
end

Quando('preencho login com um segundo usuarios') do
    home.user.send_keys('fulano')
    home.password.send_keys('fulano')
end

Quando('apago o user com comando do teclado') do 
    until home.user.value.eql?('') do home.user.send_keys(:backspace) end
        sleep(5)
end

Entao('valido campo vazio') do
    expect(home.user.has_no_text?).to eql true
end