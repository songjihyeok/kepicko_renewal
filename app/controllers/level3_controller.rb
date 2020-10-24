class Level3Controller < ApplicationController
  def show
    @level3 = Level3.find(params[:id])
    @level2_id = System.find_by(level3_id: @level3.id).level2_id
    @level1_id = Component.find_by(level2_id: @level2_id).level1_id
    @level3s = Level3.all
    @level4 = Level4.all
    @level5 = Level5.all
  end
end
