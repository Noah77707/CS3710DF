require "rails_helper"

RSpec.describe ProjectsToManiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/projects_to_manies").to route_to("projects_to_manies#index")
    end

    it "routes to #new" do
      expect(get: "/projects_to_manies/new").to route_to("projects_to_manies#new")
    end

    it "routes to #show" do
      expect(get: "/projects_to_manies/1").to route_to("projects_to_manies#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/projects_to_manies/1/edit").to route_to("projects_to_manies#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/projects_to_manies").to route_to("projects_to_manies#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/projects_to_manies/1").to route_to("projects_to_manies#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/projects_to_manies/1").to route_to("projects_to_manies#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/projects_to_manies/1").to route_to("projects_to_manies#destroy", id: "1")
    end
  end
end
