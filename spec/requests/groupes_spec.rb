require 'rails_helper'

RSpec.describe "Groupes", :type => :request do
  describe "GET /groupes" do
    it "works! (now write some real specs)" do
      get groupes_path
      expect(response).to have_http_status(200)
    end
  end
end
