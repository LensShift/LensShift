require 'rails_helper'

RSpec.describe "lens_shifter_profiles/new", type: :view do
  before(:each) do
    assign(:lens_shifter_profile, LensShifterProfile.new(
      :model => "MyString"
    ))
  end

  it "renders new lens_shifter_profile form" do
    render

    assert_select "form[action=?][method=?]", lens_shifter_profiles_path, "post" do

      assert_select "input#lens_shifter_profile_model[name=?]", "lens_shifter_profile[model]"
    end
  end
end
