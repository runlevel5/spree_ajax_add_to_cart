require 'spec_helper'

describe Spree::OrdersController do
  let(:guest_user) { create(:user) }
  let(:order) { Spree::Order.new }

  before do
    Spree::User.stub :anonymous! => guest_user
  end

  context '#populate' do
    it 'should ajax post correctly' do
      spree_post :populate, :format => :js
      assert_response :success
    end
  end
end