require 'rails_helper'

RSpec.describe "projects_to_manies/show", type: :view do
  before(:each) do
    assign(:projects_to_many, ProjectsToMany.create!(
      title: "Title",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
