require "rails_helper"

RSpec.describe GenresController, :type => :controller do
  describe "GET read" do
    it "has a 200 status code" do
      get :read
      expect(response.status).to eq(200)
    end
  end
end
