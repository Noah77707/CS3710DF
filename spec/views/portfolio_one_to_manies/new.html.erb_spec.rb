require 'rails_helper'

RSpec.describe "portfolio_one_to_manies/new", type: :view do
  before(:each) do
    assign(:portfolio_one_to_many, PortfolioOneToMany.new())
  end

  it "renders new portfolio_one_to_many form" do
    render

    assert_select "form[action=?][method=?]", portfolio_one_to_manies_path, "post" do
    end
  end
end
