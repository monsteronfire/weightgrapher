class WeightsController < ApplicationController
  before_action :find_weight, only: [:show, :edit, :update, :destroy]

  def index
    @weights = Weight.all.order("created_at DESC")
  end

  def show
  end

  def new
    @weight = current_user.weights.build
  end

  def create
    @weight = current_user.weights.build(weight_params)

    if @weight.save
      redirect_to @weight
    else
      render 'new'
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:reading)
  end

  def find_weight
    @weight = Weight.find(params[:id])
  end

end
