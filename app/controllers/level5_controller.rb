class Level5Controller < ApplicationController
  def show
    @level5 = Level5.find(params[:id])
    @level4_id = Product.find_by(level5_id: @level5.id).level4_id
    @level3_id = Package.find_by(level4_id: @level4_id).level3_id
    @level2_id = System.find_by(level3_id: @level3_id).level2_id
    @level1_id = Component.find_by(level2_id: @level2_id).level1_id
    @level5s = Level4.find(@level4_id).level5s
  end
end
