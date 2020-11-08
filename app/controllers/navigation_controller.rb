class NavigationController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @level1_id = 1
    @level1s = Level1.all
    @level2s = Level1.first.level2s
    @level3s = @level2s.first.level3s
    @level4s = @level3s.first.level4s
    @level3 = @level3s.first
    @current_route = params[:current_route]
  end

  def update

    @level1_id = params[:level1_id]
    @level3_id = params[:level3_id]
    @level1s = Level1.find(@level1_id)
    @level2s = @level1s.level2s
    @level3s = @level2s.first.level3s
    @level4s = @level3s.first.level4s

    if @level3_id.present?
      @level4s = Level3.find(@level3_id).level4s
      @level3 = Level3.find(@level3_id)
    else
      @level3 = Level3.first
    end
  end
end
