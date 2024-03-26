require 'rspec'

class CheckoutPage
include Capybara::DSL
include RSpec::Matchers
  def assertProducDetails(productName,productPrice,deliveryPrice)
    productTitle = find('.item-details h1')
    expect(productTitle.text).to eq(productName)

    subPrice = find('.subtotal .sub-price')
    expect(subPrice.text).to eq(productPrice)

    delivery = find('.delivery-price')
    expect(delivery.text).to eq(deliveryPrice)
  end

  def asserTotalPrice(value)
  price = find('.total-price')
  expect(price.text).to eq(value)
  end

  def findZipcode(zipcode)
    find('input[name=cep]').set(zipcode)
    click_on 'Buscar CEP'
  end

  def fill_address(address)
      find('input[name=number]').set(address[:number])
      find('input[name=complement]').set(address[:details])
  end

  def choicePaymentType(paymentType)
    find('label div', text: paymentType.upcase).click
  end

  def submit
    click_on 'Confirmar pedido'
  end
end
