require 'rails_helper'

RSpec.describe "restorans/new", type: :view do
  before(:each) do
    assign(:restoran, Restoran.new(
      :name => "MyString",
      :weeks => "MyString",
      :hours, => "MyString",
      :minutes => "MyString"
    ))
  end

  it "renders new restoran form" do
    render

    assert_select "form[action=?][method=?]", restorans_path, "post" do

      assert_select "input[name=?]", "restoran[name]"

      assert_select "input[name=?]", "restoran[weeks]"

      assert_select "input[name=?]", "restoran[hours,]"

      assert_select "input[name=?]", "restoran[minutes]"
    end
  end
end
