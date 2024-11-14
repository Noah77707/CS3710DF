require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/portfolio_one_to_manies", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PortfolioOneToMany. As you add validations to PortfolioOneToMany, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PortfolioOneToMany.create! valid_attributes
      get portfolio_one_to_manies_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
      get portfolio_one_to_many_url(portfolio_one_to_many)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_portfolio_one_to_many_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
      get edit_portfolio_one_to_many_url(portfolio_one_to_many)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PortfolioOneToMany" do
        expect {
          post portfolio_one_to_manies_url, params: { portfolio_one_to_many: valid_attributes }
        }.to change(PortfolioOneToMany, :count).by(1)
      end

      it "redirects to the created portfolio_one_to_many" do
        post portfolio_one_to_manies_url, params: { portfolio_one_to_many: valid_attributes }
        expect(response).to redirect_to(portfolio_one_to_many_url(PortfolioOneToMany.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PortfolioOneToMany" do
        expect {
          post portfolio_one_to_manies_url, params: { portfolio_one_to_many: invalid_attributes }
        }.to change(PortfolioOneToMany, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post portfolio_one_to_manies_url, params: { portfolio_one_to_many: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested portfolio_one_to_many" do
        portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
        patch portfolio_one_to_many_url(portfolio_one_to_many), params: { portfolio_one_to_many: new_attributes }
        portfolio_one_to_many.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the portfolio_one_to_many" do
        portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
        patch portfolio_one_to_many_url(portfolio_one_to_many), params: { portfolio_one_to_many: new_attributes }
        portfolio_one_to_many.reload
        expect(response).to redirect_to(portfolio_one_to_many_url(portfolio_one_to_many))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
        patch portfolio_one_to_many_url(portfolio_one_to_many), params: { portfolio_one_to_many: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested portfolio_one_to_many" do
      portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
      expect {
        delete portfolio_one_to_many_url(portfolio_one_to_many)
      }.to change(PortfolioOneToMany, :count).by(-1)
    end

    it "redirects to the portfolio_one_to_manies list" do
      portfolio_one_to_many = PortfolioOneToMany.create! valid_attributes
      delete portfolio_one_to_many_url(portfolio_one_to_many)
      expect(response).to redirect_to(portfolio_one_to_manies_url)
    end
  end
end