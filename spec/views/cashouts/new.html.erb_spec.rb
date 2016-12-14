require 'rails_helper'

RSpec.describe "cashouts/new", type: :view do
  before(:each) do
    assign(:cashout, Cashout.new(
      :branch => "MyString",
      :salesperson => "MyString",
      :rate => "9.99"
    ))
  end

  it "renders new cashout form" do
    render

    assert_select "form[action=?][method=?]", cashouts_path, "post" do

      assert_select "input#cashout_branch[name=?]", "cashout[branch]"

      assert_select "input#cashout_salesperson[name=?]", "cashout[salesperson]"

      assert_select "input#cashout_rate[name=?]", "cashout[rate]"
    end
  end
end
