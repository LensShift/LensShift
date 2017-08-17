require 'rails_helper'

RSpec.describe "resource_items/index", type: :view do
  before(:each) do
    assign(:resource_items, [
      ResourceItem.create!(
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
      ),
      ResourceItem.create!(
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
      )
    ])
  end

  it "renders a list of resource_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Source Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
