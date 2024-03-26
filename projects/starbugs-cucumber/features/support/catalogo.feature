#language: pt

Funcionalidade: Catalogo de cafés
    Como um usuario do site, eu quero ver o catalogo de cafes na pagina principal
    Para poder escolher os produtos disponiveis

Cenario: Acessar o catalogo de cafes na pagina principal
    Quando acesso a pagina principal da Starbugs
    Então eu devo ver uma lista de cafés disponiveis


Cenario: Iniciar a compra de um café

    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o seguinte produto:
        |   productName     |   productPrice |   deliveryPrice |
        |   Expresso Gelado |     R$ 9,99    |   R$ 10,00      |                     
    Quando inicio a compra desse item
    Então devo ver a pagina de chekout com os detalhes do produto
        E o valor total da compra deve ser de "R$ 19,99"
    
