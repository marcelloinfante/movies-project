require "rails_helper"

RSpec.describe DirectorsController, :type => :controller do
  describe "GET create" do
    it "has a 200 status code" do
      get :read
      expect(response.status).to eq(200)
    end
  end

  describe "POST read" do
    it "has a 200 status code" do
      get :create
      expect(response.status).to eq(200)
    end
  end

  describe "POST update" do
    it "has a 200 status code" do
      get :create
      expect(response.status).to eq(200)
    end
  end

  describe "DELETE delete" do
    it "has a 200 status code" do
      get :delete
      expect(response.status).to eq(200)
    end
  end
end
