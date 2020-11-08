class Level3Controller < ApplicationController
  def show
    @level3 = Level3.find(params[:id])
    @level2_id = System.find_by(level3_id: @level3.id).level2_id
    @level1_id = Component.find_by(level2_id: @level2_id).level1_id
    @level3s = System.where(level2_id: @level2_id).map{ |i| Level3.find(i.level3_id)}
    @level4s = Package.where(level3_id: @level3.id).map{ |i| Level4.find(i.level4_id)}
    @level5s = []
    @level4s.uniq.each do |level4| @level5s.concat(level4.level5s) end

  end
end
