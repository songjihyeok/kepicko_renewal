class Level0Controller < ApplicationController
  def show
    @level0 = Level0.first
    @level1 = Level1.all
    @level2=  Level2.all
    @level3 = Level3.all
    @level4 = Level4.all
    @level5 = Level5.all
  end
end
