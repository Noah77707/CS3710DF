require 'rails_helper'

RSpec.describe "portfolio_one_to_manies/index", type: :view do
  before(:each) do
    assign(:portfolio_one_to_manies, [
      PortfolioOneToMany.create!(),
      PortfolioOneToMany.create!()
    ])
  end

  it "renders a list of portfolio_one_to_manies" do
    render
    cell_selector = 'div>p'
  end
end
