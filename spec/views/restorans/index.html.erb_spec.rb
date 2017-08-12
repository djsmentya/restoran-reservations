require 'rails_helper'

RSpec.describe "restorans/index", type: :view do
  before(:each) do
    assign(:restorans, [
      Restoran.create!(
        :name => "Name",
        :weeks => "Weeks",
        :hours, => "Hours,",
        :minutes => "Minutes"
      ),
      Restoran.create!(
        :name => "Name",
        :weeks => "Weeks",
        :hours, => "Hours,",
        :minutes => "Minutes"
      )
    ])
  end

  it "renders a list of restorans" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Weeks".to_s, :count => 2
    assert_select "tr>td", :text => "Hours,".to_s, :count => 2
    assert_select "tr>td", :text => "Minutes".to_s, :count => 2
  end
end
