class ContesController < ApplicationController
  def index
    @contes = Conte.all.order(created_at: :desc)
  end

  def new
    @conte = Conte.new
  end

  def create
    if Conte.create(conte_params)
      redirect_to contes_path
    else
      render 'new'
    end
  end

  def show
    @conte = Conte.find_by(id: params[:id])
  end

  private
  def conte_params
    params.require(:conte).permit(:title, :people, :trigger, :props_costumes, :debut)
  end
end
