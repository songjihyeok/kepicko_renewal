class Level1Controller < ApplicationController
  def show
    @level1 = Level1.find(params[:id])
  end
end
