class Level4Controller < ApplicationController
  def show
    @level4 = Level4.find(params[:id])
    @level3_id = Package.find_by(level4_id: @level4.id).level3_id
    @level2_id = System.find_by(level3_id: @level3_id).level2_id
    @level1_id = Component.find_by(level2_id: @level2_id).level1_id
    @level4s = Level4.all
    @level5 = Level5.all
  end
end
