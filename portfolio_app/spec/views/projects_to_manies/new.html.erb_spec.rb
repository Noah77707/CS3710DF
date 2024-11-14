require 'rails_helper'

RSpec.describe "projects_to_manies/new", type: :view do
  before(:each) do
    assign(:projects_to_many, ProjectsToMany.new(
      title: "MyString",
      description: "MyString"
    ))
  end

  it "renders new projects_to_many form" do
    render

    assert_select "form[action=?][method=?]", projects_to_manies_path, "post" do

      assert_select "input[name=?]", "projects_to_many[title]"

      assert_select "input[name=?]", "projects_to_many[description]"
    end
  end
end
