class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @company = current_user.company
    if params[:query].present?
      @ejobers = Ejober.search_by_position(params[:query])
    else
      @ejobers = Ejober.all
    end
  end

  def profile
    if params[:query].present?
      @ejobers = Ejober.search_by_position(params[:query])
    else
      @ejobers = Ejober.all
    end
  end
end
