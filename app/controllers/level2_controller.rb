class Level2Controller < ApplicationController

  def show
    @level2 = Level2.find(params[:id])
    @level1_id = Component.find_by(level2_id: @level2.id).level1_id
  end

end
