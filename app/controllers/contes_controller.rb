class ContesController < ApplicationController
  def index
    @contes = Conte.all
  end

  def show
    @conte = Conte.find_by(params[:id])
  end
end
