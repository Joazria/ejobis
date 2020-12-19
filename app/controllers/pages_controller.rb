class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @ejobis = Ejobi.all
    @company = current_user.company
    if params[:query].present?
      @ejobers = Ejober.search_by_position(params[:query])
    else
      @ejobers = Ejober.all
    end
  end

  def profile
    @ejobis = Ejobi.all
    @company = current_user.company
    if params[:query].present?
      @ejobers = Ejober.search_by_position(params[:query])
    else
      @ejobers = Ejober.all
    end
  end
end
