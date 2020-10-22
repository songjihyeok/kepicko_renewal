class Level1Controller < ApplicationController
  def show
    @level1 = Level1.find(params[:id])
  end
  def index
    @level1 = Level1.find(1)
  end
end
