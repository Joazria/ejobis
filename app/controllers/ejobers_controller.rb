class EjobersController < ApplicationController
      before_action :set_ejober, only: [:show, :edit, :update, :destroy]

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
