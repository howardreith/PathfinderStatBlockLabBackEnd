require "rails_helper"

RSpec.describe PublicCreaturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/public_creatures").to route_to("public_creatures#index")
    end


    it "routes to #show" do
      expect(:get => "/public_creatures/1").to route_to("public_creatures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/public_creatures").to route_to("public_creatures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/public_creatures/1").to route_to("public_creatures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/public_creatures/1").to route_to("public_creatures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/public_creatures/1").to route_to("public_creatures#destroy", :id => "1")
    end

  end
end
