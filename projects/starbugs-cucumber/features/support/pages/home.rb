class HomePage
include Capybara::DSL
  def open
    visit 'https://starbugs.vercel.app/'
  end

  def coffeList
    return all ('.coffee-item')
  end

  def buy(coffeName)
  product = find('.coffee-item',text: coffeName)
  product.find('.buy-coffee').click

  end
end
