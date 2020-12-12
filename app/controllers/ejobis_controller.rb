class EjobisController < ApplicationController
 before_action :set_ejobi, only: [:show, :edit, :update, :destroy]
 before_action :set_company, only: [:new, :create, :update]


  def show
      @ejobis = Ejobi.all
      @companies = Company.all
      @ejobers = Ejober.all

  end

  def new
    @ejobi = Ejobi.new
  end

  def create

    @ejobi = Ejobi.new(ejobi_params)
    @ejobi.company = @company
    @ejobi.user = current_user
    if @ejobi.save
      redirect_to  profile_path, notice: "Sua proposta de ejobi foi criada."
    else
      render :new
    end
  end


  def update
    if @ejobi.update(ejobi_params)
      redirect_to @company, notice: "Seu ejobi foi atualizado."
    else
      redirect_to root_path
    end
  end


  def destroy
    @ejobi.destroy
    redirect_to root_path, notice: "Seu ejobi foi destruido."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_offer
    @ejobi = Ejobi.find(params[:id])
  end

  def set_company
    @company = Company.find(params[:company_id])
  end
  # Only allow a trusted parameter "white list" through.
  def ejobi_params
    params.require(:ejobi).permit(
            :name,
            :position,
            :release,
            :start_date,
            :end_date,
            :start_time,
            :end_time,
            :fee,
            :address,
            :acceptance,
            :validation
      )
   end
end
