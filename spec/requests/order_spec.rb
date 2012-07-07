require 'spec_helper'

describe 'Orders' do
  it 'should allow a user to add product to cart with ajax' do
    create(:product, :name => 'Stinky Pant', :price => 5.0)
    visit spree.root_path

    click_link 'Stinky Pant'
    click_button 'Add To Cart'
    sleep(5)

    find('#link-to-cart a').text.should equal 'Cart: (1)  $5.00'
  end
end
