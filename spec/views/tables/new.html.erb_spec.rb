require 'rails_helper'

RSpec.describe "tables/new", type: :view do
  before(:each) do
    assign(:table, Table.new(
      :name => "MyString",
      :restoran => nil
    ))
  end

  it "renders new table form" do
    render

    assert_select "form[action=?][method=?]", tables_path, "post" do

      assert_select "input[name=?]", "table[name]"

      assert_select "input[name=?]", "table[restoran_id]"
    end
  end
end
