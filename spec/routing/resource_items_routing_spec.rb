require "rails_helper"

RSpec.describe ResourceItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resource_items").to route_to("resource_items#index")
    end

    it "routes to #new" do
      expect(:get => "/resource_items/new").to route_to("resource_items#new")
    end

    it "routes to #show" do
      expect(:get => "/resource_items/1").to route_to("resource_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resource_items/1/edit").to route_to("resource_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resource_items").to route_to("resource_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/resource_items/1").to route_to("resource_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/resource_items/1").to route_to("resource_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resource_items/1").to route_to("resource_items#destroy", :id => "1")
    end

  end
end
