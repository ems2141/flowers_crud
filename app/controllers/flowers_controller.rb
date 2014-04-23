class FlowersController < ApplicationController

  def index
    @flowers = Flower.all
  end

  def new

  end

  def create
    @flowers = Flower.create(name: params[:flower_name])
    redirect_to '/'
  end

end