require 'rails_helper'

RSpec.describe "Cashouts", type: :request do
  describe "GET /cashouts" do
    it "works! (now write some real specs)" do
      get cashouts_path
      expect(response).to have_http_status(200)
    end
  end
end
