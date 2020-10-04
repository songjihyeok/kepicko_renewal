class Level2Controller < ApplicationController

  def show
    @level2 = Level2.find(params[:id])
  end

end
