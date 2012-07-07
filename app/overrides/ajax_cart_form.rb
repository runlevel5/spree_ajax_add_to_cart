Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'remote_cart_form',
                     :replace => "code[erb-loud]:contains('form_for :order, :url => populate_orders_url do |f|')",
                     :erb => "<%= form_for :order, :url => populate_orders_url, :remote => true do |f| %>")
