require "rails_helper"

RSpec.describe CreatePublicCreaturesTablesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/create_public_creatures_tables").to route_to("create_public_creatures_tables#index")
    end


    it "routes to #show" do
      expect(:get => "/create_public_creatures_tables/1").to route_to("create_public_creatures_tables#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/create_public_creatures_tables").to route_to("create_public_creatures_tables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/create_public_creatures_tables/1").to route_to("create_public_creatures_tables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/create_public_creatures_tables/1").to route_to("create_public_creatures_tables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/create_public_creatures_tables/1").to route_to("create_public_creatures_tables#destroy", :id => "1")
    end

  end
end
