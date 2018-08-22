require 'rails_helper'

RSpec.describe "PublicCreatures", type: :request do
  describe "GET /public_creatures" do
    it "works! (now write some real specs)" do
      get public_creatures_path
      expect(response).to have_http_status(200)
    end
  end
end
