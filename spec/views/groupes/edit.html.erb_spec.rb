require 'rails_helper'

RSpec.describe "groupes/edit", :type => :view do
  before(:each) do
    @groupe = assign(:groupe, Groupe.create!(
      :nom => "MyString"
    ))
  end

  it "renders the edit groupe form" do
    render

    assert_select "form[action=?][method=?]", groupe_path(@groupe), "post" do

      assert_select "input#groupe_nom[name=?]", "groupe[nom]"
    end
  end
end
