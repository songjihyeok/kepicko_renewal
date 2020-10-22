class Level3Controller < ApplicationController
  def show
    @level3 = Level3.find(params[:id])
    @level2_id = System.find_by(level3_id: @level3.id).level2_id
    @level1_id = Component.find_by(level2_id: @level2_id).level1_id
  end
end
