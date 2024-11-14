require 'rails_helper'

RSpec.describe "projects_to_manies/index", type: :view do
  before(:each) do
    assign(:projects_to_manies, [
      ProjectsToMany.create!(
        title: "Title",
        description: "Description"
      ),
      ProjectsToMany.create!(
        title: "Title",
        description: "Description"
      )
    ])
  end

  it "renders a list of projects_to_manies" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
