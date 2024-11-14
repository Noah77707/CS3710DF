require 'rails_helper'

RSpec.describe "portfolio_one_to_manies/show", type: :view do
  before(:each) do
    assign(:portfolio_one_to_many, PortfolioOneToMany.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
