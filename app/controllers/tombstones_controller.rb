class TombstonesController < ApplicationController

  def new
    @tombstone = Tombstone.new
  end

  def create
    @tombstone = Tombstone.new(tombstone_params)
    if @tombstone.save
      redirect_to @tombstone
    else
      @errors = @tombstone.errors.full_messages
      render 'new'
    end
  end

  def show
    @tombstone = Tombstone.find(params[:id])
  end

  def edit
    @tombstone = Tombstone.find(params[:id])
  end

  def update
    @tombstone = Tombstone.find(params[:id])
    if @tombstone.update(tombstone_params)
      redirect_to @tombstone
    else 
      @errors = @tombstone.errors.full_messages
      render 'edit'
    end
  end

  private
    def tombstone_params
      params.require(:tombstone).permit(:acquiror_logo, :acquired_text, :acquired_logo, :year, :representation, :conducted_text)
    end

end