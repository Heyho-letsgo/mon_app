require "rails_helper"

RSpec.describe GroupesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/groupes").to route_to("groupes#index")
    end

    it "routes to #new" do
      expect(:get => "/groupes/new").to route_to("groupes#new")
    end

    it "routes to #show" do
      expect(:get => "/groupes/1").to route_to("groupes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/groupes/1/edit").to route_to("groupes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/groupes").to route_to("groupes#create")
    end

    it "routes to #update" do
      expect(:put => "/groupes/1").to route_to("groupes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/groupes/1").to route_to("groupes#destroy", :id => "1")
    end

  end
end
