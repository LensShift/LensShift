require 'rails_helper'

RSpec.describe "lens_shifter_profiles/index", type: :view do
  before(:each) do
    assign(:lens_shifter_profiles, [
      LensShifterProfile.create!(
        :model => "Model"
      ),
      LensShifterProfile.create!(
        :model => "Model"
      )
    ])
  end

  it "renders a list of lens_shifter_profiles" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
  end
end
