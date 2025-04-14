class ContesController < ApplicationController
  def index
    @contes = Conte.all.order(created_at: :desc)
  end

  def new
    @conte = Conte.new
  end

  def create
    @conte = Conte.new(conte_params)
    if @conte.save
      redirect_to contes_path, notice: 'Conte was successfully created.'
    else
      render 'new', alert: 'Failed to create Conte.'
    end
  end

  def edit
    @conte = Conte.find_by(id: params[:id])
  end

  def update
    @conte = Conte.find_by(id: params[:id])
    if @conte.update(conte_params)
      redirect_to conte_path(@conte), notice: 'Conte was successfully updated.'
    else
      render 'edit', alert: 'Failed to update Conte.'
    end
  end

  def show
    @conte = Conte.find_by(id: params[:id])
  end

  def destroy
    @conte = Conte.find_by(id: params[:id])
    if @conte&.destroy
      redirect_to contes_path, notice: 'Conte was successfully deleted.'
    else
      redirect_to contes_path, alert: 'Failed to delete Conte.'
    end
  end

  private

  def conte_params
    params.require(:conte).permit(:title, :people, :trigger, :props_costumes, :debut)
  end
end
