class Level2Controller < ApplicationController

  def show
    @level2 = Level2.find(params[:id])
    @level1_id = Component.find_by(level2_id: @level2.id).level1_id
    @level2s =  Level2.all
    @level3 = Level3.all
    @level4 = Level4.all
    @level5 = Level5.all
  end
end
