require "rails_helper"

RSpec.describe PortfolioOneToManiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/portfolio_one_to_manies").to route_to("portfolio_one_to_manies#index")
    end

    it "routes to #new" do
      expect(get: "/portfolio_one_to_manies/new").to route_to("portfolio_one_to_manies#new")
    end

    it "routes to #show" do
      expect(get: "/portfolio_one_to_manies/1").to route_to("portfolio_one_to_manies#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/portfolio_one_to_manies/1/edit").to route_to("portfolio_one_to_manies#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/portfolio_one_to_manies").to route_to("portfolio_one_to_manies#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/portfolio_one_to_manies/1").to route_to("portfolio_one_to_manies#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/portfolio_one_to_manies/1").to route_to("portfolio_one_to_manies#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/portfolio_one_to_manies/1").to route_to("portfolio_one_to_manies#destroy", id: "1")
    end
  end
end
