require 'rspec'
class OrderPage
include Capybara::DSL
include RSpec::Matchers

def assertOrder
    expect(find('h1').text).to eq('Uhull! Pedido confirmado')
    expect(find('p[color=subtitle]').text).to eq('Agora é só aguardar que logo o café chegará até você')
  end
end
