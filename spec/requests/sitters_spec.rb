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

RSpec.describe "/sitters", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Sitter. As you add validations to Sitter, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # SittersController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Sitter.create! valid_attributes
      get sitters_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      sitter = Sitter.create! valid_attributes
      get sitter_url(sitter), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Sitter" do
        expect {
          post sitters_url,
               params: { sitter: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Sitter, :count).by(1)
      end

      it "renders a JSON response with the new sitter" do
        post sitters_url,
             params: { sitter: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Sitter" do
        expect {
          post sitters_url,
               params: { sitter: invalid_attributes }, as: :json
        }.to change(Sitter, :count).by(0)
      end

      it "renders a JSON response with errors for the new sitter" do
        post sitters_url,
             params: { sitter: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sitter" do
        sitter = Sitter.create! valid_attributes
        patch sitter_url(sitter),
              params: { sitter: new_attributes }, headers: valid_headers, as: :json
        sitter.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the sitter" do
        sitter = Sitter.create! valid_attributes
        patch sitter_url(sitter),
              params: { sitter: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the sitter" do
        sitter = Sitter.create! valid_attributes
        patch sitter_url(sitter),
              params: { sitter: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested sitter" do
      sitter = Sitter.create! valid_attributes
      expect {
        delete sitter_url(sitter), headers: valid_headers, as: :json
      }.to change(Sitter, :count).by(-1)
    end
  end
end
