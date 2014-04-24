class FlowersController < ApplicationController

  def index
    @flowers = Flower.all
  end

  def new

  end

  def create
    Flower.create(name: params[:flower_name])
    redirect_to '/'
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower = Flower.find(params[:id])
    @flower.update(name: params[:edit_name])
    redirect_to '/'
  end

end