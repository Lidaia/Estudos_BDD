Dado('inicio a compra desse item {string}') do |product_name|
  @home.buy(product_name)
end

Quando('faço a busca do seguinte CEP:{string}') do |zipcode|
  @checkout.findZipcode(zipcode)
end

Quando('informo os dados do endereço:') do |table|
  @checkout.fill_address(table.rows_hash)
end

Quando('quando escolho a forma de pagamento {string}') do |paymentType|
  @checkout.choicePaymentType(paymentType)
end

Quando('por fim finalizo a compra') do
  @checkout.submit
end

Então('sou redirecionado para a pagina de confirmação de Pedidos') do
  @order.assertOrder
end

Então('deve ser informado o seguinte prazo de entrega {string}') do |delyveryTime|
  delyvery_time = find('p',text:'Previsão de entrega')
  expect(delyvery_time.find('strong').text).to eq(delyveryTime)

end
