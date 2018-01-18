require "rails_helper"

RSpec.describe LensShifterProfilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lens_shifter_profiles").to route_to("lens_shifter_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/lens_shifter_profiles/new").to route_to("lens_shifter_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/lens_shifter_profiles/1").to route_to("lens_shifter_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lens_shifter_profiles/1/edit").to route_to("lens_shifter_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lens_shifter_profiles").to route_to("lens_shifter_profiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lens_shifter_profiles/1").to route_to("lens_shifter_profiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lens_shifter_profiles/1").to route_to("lens_shifter_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lens_shifter_profiles/1").to route_to("lens_shifter_profiles#destroy", :id => "1")
    end

  end
end
