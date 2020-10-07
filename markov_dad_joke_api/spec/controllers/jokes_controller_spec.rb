require 'rails_helper'

RSpec.describe JokesController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST generate markov joke" do
    it "returns a 200" do
      post :generate
      expect(response).to have_http_status(:ok)
    end

    it "returns a joke object" do
      post :generate
      JSON.parse(response.body).class.should eq(Hash)
    end
  end
end
