class Level0Controller < ApplicationController
  def show
    @level0 = Level0.first
  end
end
