require 'rails_helper'

RSpec.describe "restorans/edit", type: :view do
  before(:each) do
    @restoran = assign(:restoran, Restoran.create!(
      :name => "MyString",
      :weeks => "MyString",
      :hours, => "MyString",
      :minutes => "MyString"
    ))
  end

  it "renders the edit restoran form" do
    render

    assert_select "form[action=?][method=?]", restoran_path(@restoran), "post" do

      assert_select "input[name=?]", "restoran[name]"

      assert_select "input[name=?]", "restoran[weeks]"

      assert_select "input[name=?]", "restoran[hours,]"

      assert_select "input[name=?]", "restoran[minutes]"
    end
  end
end
