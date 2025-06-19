class QuestsController < ApplicationController
  def index
    @quests = Quest.order(created_at: :desc)
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(quest_params)
    if @quest.save
      respond_to do |format|
        format.turbo_stream
        # format.html { redirect_to quests_path }
        redirect_to quests_path
      end
    else
      render :new
    end
  end

  private
  def quest_params
    params.require(:quest).permit(:title, :status)
  end
end
