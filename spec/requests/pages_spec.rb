require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /brag_doc" do
    it 'can render pages brag_doc path' do
      get brag_document_path
      expect(response).to have_http_status(:ok)
    end
  end
end
