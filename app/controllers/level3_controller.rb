class Level3Controller < ApplicationController
  def show
    @level3 = Level3.find(params[:id])
  end
end
