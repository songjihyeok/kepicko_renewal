class Level5Controller < ApplicationController
  def show
    @level5 = Level5.find(params[:id])
  end
end
