class Level4Controller < ApplicationController
  def show
    @level4 = Level4.find(params[:id])
    @level3_id = Package.find_by(level4_id: @level4.id).level3_id
    @level2_id = System.find_by(level3_id: @level3_id).level2_id
    @level1_id = Component.find_by(level2_id: @level2_id).level1_id
    @level4s = Package.where(level3_id: @level3_id).map{ |i| Level4.find(i.level4_id)}
    @level5s = Product.where(level4_id: @level4.id).map{ |i| Level5.find(i.level5_id)}
  end
end
