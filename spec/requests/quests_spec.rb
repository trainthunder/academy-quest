require 'rails_helper'

RSpec.describe "Quests", type: :request do
  describe "GET /quests" do
    it 'can render quests index path' do
      get quests_path
      expect(response).to have_http_status(:ok)
    end
  end
  describe "POST /quests" do
    it "can create a new quest" do
      expect {
        post quests_path,
        params: {
          quest: {
            title: "Git 101",
            status: false
            }
          }
      }.to change(Quest, :count).by(1)
    end
  end

  describe "DELETE /quests/:id" do
    it "can delete quest" do
      quest = Quest.create!(title: "Ruby 101", status: false)
      expect {
        delete quest_path(quest)
      }.to change(Quest, :count).by(-1)
    end
  end
end
