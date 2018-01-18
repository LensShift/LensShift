require 'rails_helper'

RSpec.describe "lens_shifter_profiles/show", type: :view do
  before(:each) do
    @lens_shifter_profile = assign(:lens_shifter_profile, LensShifterProfile.create!(
      :model => "Model"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
  end
end
