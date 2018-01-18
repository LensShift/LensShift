require 'rails_helper'

RSpec.describe "LensShifterProfiles", type: :request do
  describe "GET /lens_shifter_profiles" do
    it "works! (now write some real specs)" do
      get lens_shifter_profiles_path
      expect(response).to have_http_status(200)
    end
  end
end
