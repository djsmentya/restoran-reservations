require 'rails_helper'

RSpec.describe "tables/show", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :name => "Name",
      :restoran => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
