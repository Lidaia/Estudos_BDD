#language: pt

Funcionalidade: Pedidos
    Como usuario do site Starbugs eu desejo selecionar e comprar um cafe
    Para que eu possa receber os produtos no meu endereço e efetuar o pagamento
    
    Cenario: Compra bem sucedida
        Dado que estou na pagina principal da Starbugs
            E inicio a compra desse item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP:"74905440"
            E informo os dados do endereço:
                |number|1000|
                |details|Apto 22|
            E quando escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redirecionado para a pagina de confirmação de Pedidos
        E deve ser informado o seguinte prazo de entrega "20 min - 30 min"
        