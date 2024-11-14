require 'rails_helper'

RSpec.describe "portfolio_one_to_manies/edit", type: :view do
  let(:portfolio_one_to_many) {
    PortfolioOneToMany.create!()
  }

  before(:each) do
    assign(:portfolio_one_to_many, portfolio_one_to_many)
  end

  it "renders the edit portfolio_one_to_many form" do
    render

    assert_select "form[action=?][method=?]", portfolio_one_to_many_path(portfolio_one_to_many), "post" do
    end
  end
end
