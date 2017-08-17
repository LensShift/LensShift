require 'rails_helper'

RSpec.describe "resource_items/show", type: :view do
  before(:each) do
    @resource_item = assign(:resource_item, ResourceItem.create!(
      :title => "Title",
      :author => "Author",
      :source => "Source",
      :source_url => "Source Url",
      :estimated_reading_time => 2,
      :short_summary => "MyText",
      :tags => "Tags",
      :long_summary => "MyText",
      :key_takeaways => "MyText",
      :optional_analysis => "MyText",
      :image => "Image",
      :type => "Type",
      :lens_shifter => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/Source Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(//)
  end
end
