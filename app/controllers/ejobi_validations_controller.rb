class EjobiValidationsController < ApplicationController
  def new
   @favorite = Favorite.new
  end

  def create
    @ejobi = Ejobi.find(params[:ejobi_id])
    @ejobi_validations = EjobiValidation.new
    @ejobi_validations.user = current_user
    @ejobi_validations.ejober = @ejobi
    if @ejobi_validations.save
  end
end
  def destroy(ejobi_validations)
    @ejobi_validations = EjobiValidation.find(params[:id])
    if @ejobi_validations.destroy
    end
  end
end
