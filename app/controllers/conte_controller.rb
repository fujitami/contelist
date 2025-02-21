class ConteController < ApplicationController
  def index
    @contes = Conte.all
  end
end
