require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :shipping_address => "MyString",
      :user => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_shipping_address[name=?]", "order[shipping_address]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"
    end
  end
end
