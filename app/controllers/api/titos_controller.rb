class Api::TitosController < ApplicationController

  def index 
    @titos = Tito.all 
    render "index.json.jb"
  end

end
