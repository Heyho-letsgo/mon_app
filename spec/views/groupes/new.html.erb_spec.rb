require 'rails_helper'

RSpec.describe "groupes/new", :type => :view do
  before(:each) do
    assign(:groupe, Groupe.new(
      :nom => "MyString"
    ))
  end

  it "renders new groupe form" do
    render

    assert_select "form[action=?][method=?]", groupes_path, "post" do

      assert_select "input#groupe_nom[name=?]", "groupe[nom]"
    end
  end
end
