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

  def show
    @tito = Tito.find_by(id: params[:id])
    render 'show.json.jb'
    end


  def update
    @tito = Tito.find_by(id: params[:id])
    @tito.name = params[:name] || @tito.name
    @tito.age = params[:age] || @tito.age
    @tito.location = params[:location] || @tito.location
    @tito.save
    render 'show.json.jb'
  end

end
