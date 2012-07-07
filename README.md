Spree AJAX Add To Cart
======================

The extension adds an AJAX "Add to cart", when the user adds an item to the cart the system will make an Ajax call to add the item to the cart. Once the item has been added the cart details in the header is updated and an alert box displayed informing the user that the item was added.

Installation
------------

Append to your Gemfile:

    gem 'spree_ajax_add_to_cart', :git => 'git://github.com/joneslee85/spree_ajax_add_to_cart.git'

then:

    bundle install

Customization
-------------

Feel free to override `app/views/spree/orders/populate.js.coffee` in your app
should you require customization on the AJAX response.

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rake spec

Copyright (c) 2012 Trung Lê, released under the New BSD License
