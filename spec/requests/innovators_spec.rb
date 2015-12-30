require 'rails_helper'

RSpec.describe "Innovators", type: :request do
  describe "GET /innovators" do
    it "works! (now write some real specs)" do
      get innovators_path
      expect(response).to have_http_status(200)
    end
  end
end
