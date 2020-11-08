class Level1Controller < ApplicationController
  def show
    @level1 = Level1.find(params[:id])
    @level2s = @level1.level2s
    @level3s = []
    @level2s.uniq.each do |level2| @level3s.concat(level2.level3s) end
    @level4s = []
    @level3s.uniq.each do |level3| @level4s.concat(level3.level4s) end
    @level5s = []
    @level4s.uniq.each do |level4| @level5s.concat(level4.level5s) end
  end
end
