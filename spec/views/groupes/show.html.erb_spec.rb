require 'rails_helper'

RSpec.describe "groupes/show", :type => :view do
  before(:each) do
    @groupe = assign(:groupe, Groupe.create!(
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
  end
end
