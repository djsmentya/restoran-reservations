require 'rails_helper'

RSpec.describe "restorans/show", type: :view do
  before(:each) do
    @restoran = assign(:restoran, Restoran.create!(
      :name => "Name",
      :weeks => "Weeks",
      :hours, => "Hours,",
      :minutes => "Minutes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Weeks/)
    expect(rendered).to match(/Hours,/)
    expect(rendered).to match(/Minutes/)
  end
end
