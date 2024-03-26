Quando('acesso a pagina principal da Starbugs') do
    @home.open
  end

  Então('eu devo ver uma lista de cafés disponiveis') do
    expect(@home.coffeList.size).to be > 0
end

##Cenario 2
Dado('que estou na pagina principal da Starbugs') do
  @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @product_name = table.hashes[0][:productName]
  @product_price = table.hashes[0][:productPrice]
  @delivery_price = table.hashes[0][:deliveryPrice]

end

Quando('inicio a compra desse item') do
  @home.buy(@product_name)
end

Então('devo ver a pagina de chekout com os detalhes do produto') do
  @checkout.assertProducDetails(@product_name,@product_price,@delivery_price)

end

Então('o valor total da compra deve ser de {string}') do |totalPrice|
  @checkout.asserTotalPrice(totalPrice)
end

##Cenario 3
