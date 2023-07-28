class DocumentaryFilmsController < ApplicationController
  def index
    @documentary_films = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_params)
    if @documentary_film.save
      redirect_to documentary_films_path
    else
      redirect_to new_documentary_film_path
    end
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  def documentary_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
