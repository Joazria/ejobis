class FavoritesController < ApplicationController

  def new
      @favorite = Favorite.new

  end

  def create
      @ejober = Ejober.find(params[:ejober_id])
      @favorite = Favorite.new
      @favorite.user = current_user
      @favorite.ejober = @ejober
    if @favorite.save
      redirect_to ejober_path(@ejober)
  end
end
  def destroy(favorite)
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
    redirect_back(fallback_location: ejober_path(@favorite.ejober,
    anchor: "candidate_#{@favorite.ejober.id}"))
    end
  end
end
