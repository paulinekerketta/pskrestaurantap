require "rails_helper"

RSpec.describe CashoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cashouts").to route_to("cashouts#index")
    end

    it "routes to #new" do
      expect(:get => "/cashouts/new").to route_to("cashouts#new")
    end

    it "routes to #show" do
      expect(:get => "/cashouts/1").to route_to("cashouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cashouts/1/edit").to route_to("cashouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cashouts").to route_to("cashouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cashouts/1").to route_to("cashouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cashouts/1").to route_to("cashouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cashouts/1").to route_to("cashouts#destroy", :id => "1")
    end

  end
end
