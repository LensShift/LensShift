require 'rails_helper'

RSpec.describe "resource_items/edit", type: :view do
  before(:each) do
    @resource_item = assign(:resource_item, ResourceItem.create!(
      :title => "MyString",
      :author => "MyString",
      :source => "MyString",
      :source_url => "MyString",
      :estimated_reading_time => 1,
      :short_summary => "MyText",
      :tags => "MyString",
      :long_summary => "MyText",
      :key_takeaways => "MyText",
      :optional_analysis => "MyText",
      :image => "MyString",
      :type => "",
      :lens_shifter => nil
    ))
  end

  it "renders the edit resource_item form" do
    render

    assert_select "form[action=?][method=?]", resource_item_path(@resource_item), "post" do

      assert_select "input#resource_item_title[name=?]", "resource_item[title]"

      assert_select "input#resource_item_author[name=?]", "resource_item[author]"

      assert_select "input#resource_item_source[name=?]", "resource_item[source]"

      assert_select "input#resource_item_source_url[name=?]", "resource_item[source_url]"

      assert_select "input#resource_item_estimated_reading_time[name=?]", "resource_item[estimated_reading_time]"

      assert_select "textarea#resource_item_short_summary[name=?]", "resource_item[short_summary]"

      assert_select "input#resource_item_tags[name=?]", "resource_item[tags]"

      assert_select "textarea#resource_item_long_summary[name=?]", "resource_item[long_summary]"

      assert_select "textarea#resource_item_key_takeaways[name=?]", "resource_item[key_takeaways]"

      assert_select "textarea#resource_item_optional_analysis[name=?]", "resource_item[optional_analysis]"

      assert_select "input#resource_item_image[name=?]", "resource_item[image]"

      assert_select "input#resource_item_type[name=?]", "resource_item[type]"

      assert_select "input#resource_item_lens_shifter_id[name=?]", "resource_item[lens_shifter_id]"
    end
  end
end
