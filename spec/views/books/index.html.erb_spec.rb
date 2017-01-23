require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :author => "Author",
        :showing => false,
        :price => 2
      ),
      Book.create!(
        :title => "Title",
        :author => "Author",
        :showing => false,
        :price => 2
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => '不可', :count => 2
  end
end
