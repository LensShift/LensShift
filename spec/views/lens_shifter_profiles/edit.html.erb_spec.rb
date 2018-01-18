require 'rails_helper'

RSpec.describe "lens_shifter_profiles/edit", type: :view do
  before(:each) do
    @lens_shifter_profile = assign(:lens_shifter_profile, LensShifterProfile.create!(
      :model => "MyString"
    ))
  end

  it "renders the edit lens_shifter_profile form" do
    render

    assert_select "form[action=?][method=?]", lens_shifter_profile_path(@lens_shifter_profile), "post" do

      assert_select "input#lens_shifter_profile_model[name=?]", "lens_shifter_profile[model]"
    end
  end
end
