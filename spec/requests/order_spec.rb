require 'spec_helper'

describe 'Orders' do
  it 'should allow a user to add product to cart with ajax', :js => true do
    create(:simple_product, :name => 'Stinky Pant', :price => 5.0)
    visit spree.root_path

    click_link 'Stinky Pant'
    click_button 'Add To Cart'

    within "#link-to-cart a" do
      page.should have_content 'CART: (1) $5.00'
    end
  end
end
