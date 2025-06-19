require 'rails_helper'

RSpec.describe "Quests", type: :request do
  describe "GET /quests" do
    it 'can render quests index path' do
      get quests_path
      expect(response).to have_http_status(:ok)
    end
  end
end
