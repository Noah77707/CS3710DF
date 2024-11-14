require 'rails_helper'

RSpec.describe "projects_to_manies/edit", type: :view do
  let(:projects_to_many) {
    ProjectsToMany.create!(
      title: "MyString",
      description: "MyString"
    )
  }

  before(:each) do
    assign(:projects_to_many, projects_to_many)
  end

  it "renders the edit projects_to_many form" do
    render

    assert_select "form[action=?][method=?]", projects_to_many_path(projects_to_many), "post" do

      assert_select "input[name=?]", "projects_to_many[title]"

      assert_select "input[name=?]", "projects_to_many[description]"
    end
  end
end
