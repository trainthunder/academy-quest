require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /pages" do
    it 'can render pages pages path' do
      get pages_path
      expect(response).to have_http_status(:ok)
    end
  end
end
