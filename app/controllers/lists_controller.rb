class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    # gets one value
    @list = List.find(params[:id])
  end

  def new
    # creates a new instance
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
    # Later just update this create for a better way to write this action
  end

  def list_params
      params.require(:list).permit(:name, :photo)
  end
end
