require 'rails_helper'

RSpec.describe "cashouts/show", type: :view do
  before(:each) do
    @cashout = assign(:cashout, Cashout.create!(
      :branch => "Branch",
      :salesperson => "Salesperson",
      :rate => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Branch/)
    expect(rendered).to match(/Salesperson/)
    expect(rendered).to match(/9.99/)
  end
end
