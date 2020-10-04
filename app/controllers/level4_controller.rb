class Level4Controller < ApplicationController
  def show
    @level4 = Level4.find(params[:id])
  end
end
