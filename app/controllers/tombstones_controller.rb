class TombstonesController < ApplicationController

  def new
    @tombstone = Tombstone.new
  end

  def create
    begin 
      @tombstone = Tombstone.new(tombstone_params)
      @tombstone.save!
      redirect_to @tombstone
    rescue => e 
      @errors = [e]
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
    begin 
      @tombstone = Tombstone.find(params[:id])
      @tombstone.update(tombstone_params)
      redirect_to @tombstone
    rescue => e 
      @errors = [e]
      render 'edit'
    end
  end

  private
    def tombstone_params
      params.require(:tombstone).permit(:acquiror_logo, :acquired_text, :acquired_logo, :year, :representation, :conducted_text)
    end

end