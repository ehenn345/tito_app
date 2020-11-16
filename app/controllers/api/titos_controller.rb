class Api::TitosController < ApplicationController

  def index 
    @titos = Tito.all 
    render "index.json.jb"
  end

  def create
    @tito = Tito.new(
      name: params[:name],
      age: params[:age],
      location: params[:location]
    )
    @tito.save
    render 'show.json.jb'
  end


  
end
