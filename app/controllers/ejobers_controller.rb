class EjobersController < ApplicationController
      before_action :set_ejober, only: [:show, :edit, :update, :destroy, :add_favorite, :unfavorite]

      def index
    if params[:query].present?
      sql_query = "position ILIKE :query OR skills ILIKE :query"
      @ejobers = Ejober.where(sql_query, query: "%#{params[:query]}%")
    else
      @ejobers = Ejober.all
    end
  end

  def show
    @ejobers = Ejober.all
  end

  def new
    @ejober = Ejober.new
  end

  def edit
  end

  def create
    @ejober = Ejober.new(ejober_params)
    @ejober.user = current_user
    if @ejober.save
      redirect_to @ejober, notice: "Seu perfil foi criado com sucesso."
    else
      render :new
    end
  end

  def update
    if @ejober.update(ejober_params)
      redirect_to @ejober, notice: "Seu perfil foi atualizado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @ejober.destroy
    redirect_to root_path, notice: "Seu perfil foi destruido."
  end

  #   def add_favorite
  #   current_user.company.favorite(@ejober)
  #   redirect_to request.referrer
  # end

  # def unfavorite
  #   current_user.company.unfavorite(@ejober)
  #   redirect_to request.referrer
  # end
def favoritar
    @ejober = Ejober.find(params[:id])
    current_user.favorited?(@ejober) ? current_user.unfavorite(@ejober) : current_user.favorite(@ejober)
  end

 def favorite
    @ejober = Ejober.find(params[:id])
    @favorite = Favorite.create(company: current_user.company, ejober: @ejober)
    redirect_to ejober_path(@ejober)
  end

  def unfavorite
    @ejober = Ejober.find(params[:id])
    @favorite = Favorite.find_by(company: current_user.company, ejober: @ejober)
    @favorite.destroy
    redirect_to ejober_path(@ejober)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ejober
    @ejober = Ejober.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ejober_params
  params.require(:ejober).permit(:name,
                                  :surname,
                                  :birthday,
                                  :gender,
                                  :ethnic,
                                  :deficiency,
                                  :skills,
                                  :release,
                                  :position,
                                  :address,
                                  :cpf,
                                  :city,
                                  :state,
                                  :phone,
                                  :avatar)
  end
end
