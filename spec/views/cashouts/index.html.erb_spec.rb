require 'rails_helper'

RSpec.describe "cashouts/index", type: :view do
  before(:each) do
    assign(:cashouts, [
      Cashout.create!(
        :branch => "Branch",
        :salesperson => "Salesperson",
        :rate => "9.99"
      ),
      Cashout.create!(
        :branch => "Branch",
        :salesperson => "Salesperson",
        :rate => "9.99"
      )
    ])
  end

  it "renders a list of cashouts" do
    render
    assert_select "tr>td", :text => "Branch".to_s, :count => 2
    assert_select "tr>td", :text => "Salesperson".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
