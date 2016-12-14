require 'rails_helper'

RSpec.describe "cashouts/edit", type: :view do
  before(:each) do
    @cashout = assign(:cashout, Cashout.create!(
      :branch => "MyString",
      :salesperson => "MyString",
      :rate => "9.99"
    ))
  end

  it "renders the edit cashout form" do
    render

    assert_select "form[action=?][method=?]", cashout_path(@cashout), "post" do

      assert_select "input#cashout_branch[name=?]", "cashout[branch]"

      assert_select "input#cashout_salesperson[name=?]", "cashout[salesperson]"

      assert_select "input#cashout_rate[name=?]", "cashout[rate]"
    end
  end
end
