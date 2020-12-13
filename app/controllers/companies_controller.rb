class CompaniesController < ApplicationController
    before_action :set_company, only: [:show, :edit, :update, :destroy]

  def show
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save
      redirect_to @company, notice: "Sua empresa foi registrada com sucesso."
    else
      render :new, notice: "Something goes wrong."
    end
  end

  def update
    if @company.update(company_params)
      redirect_to @company, notice: "Atualizamos os dados de sua empresa com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to root_path, notice: "O perfil de sua empresa foi destruido."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def company_params
  params.require(:company).permit(:name,
                                  :release,
                                  :website,
                                  :linkedin,
                                  :email,
                                  :phone,
                                  :city,
                                  :state,
                                  :address,
                                  :cnpj,
                                  :logo)
  end
end
