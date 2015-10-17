class WeightsController < ApplicationController
  def index
    @weights = Weight.all.order("created_at DESC")
  end

  def new
    @weight = current_user.weights.build
  end

  def create
    @weight = current_user.weights.build(weight_params)
  end

  private

  def weight_params
    params.require(:weight).permit(:reading)
  end

  def find_weight
    @weight = Weight.find(params[:id])
  end

end
