class Level2Controller < ApplicationController

  def show
    @level2 = Level2.find(params[:id])
    @level1_id = Component.find_by(level2_id: @level2.id).level1_id
    @level2s = Component.where(level1_id: @level1_id).map{ |i| Level2.find(i.level2_id)}
    @level3s = System.where(level2_id: @level2.id).map{ |i| Level3.find(i.level3_id)}
    @level4s = []
    @level3s.uniq.each do |level3| @level4s.concat(level3.level4s) end
    @level5s = []
    @level4s.uniq.each do |level4| @level5s.concat(level4.level5s) end
  end
end
