require 'rails_helper'

RSpec.describe "CreatePublicCreaturesTables", type: :request do
  describe "GET /create_public_creatures_tables" do
    it "works! (now write some real specs)" do
      get create_public_creatures_tables_path
      expect(response).to have_http_status(200)
    end
  end
end
