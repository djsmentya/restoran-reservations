require 'rails_helper'

RSpec.describe "Restorans", type: :request do
  describe "GET /restorans" do
    it "works! (now write some real specs)" do
      get restorans_path
      expect(response).to have_http_status(200)
    end
  end
end
