class Level1Controller < ApplicationController
  def show
    @level1 = Level1.find(params[:id])
  end
  def index
    @level1 = Level1.find(1)
    @level2=  Level2.all
    @level3 = Level3.all
    @level4 = Level4.all
    @level5 = Level5.all
  end
end
