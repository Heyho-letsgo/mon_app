require 'rails_helper'

RSpec.describe "groupes/index", :type => :view do
  before(:each) do
    assign(:groupes, [
      Groupe.create!(
        :nom => "Nom"
      ),
      Groupe.create!(
        :nom => "Nom"
      )
    ])
  end

  it "renders a list of groupes" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
  end
end
