class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]


  def home

    if params[:query].present?
      @ejobers = Ejober.search_by_name(params[:query])
    else
      @ejobers = Ejober.all
    end
  end

  def profile

  end
end
