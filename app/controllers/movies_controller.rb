class MoviesController < ApplicationController
  def index
    if params[:search].present?
      @movies = Movie.search(params[:search]).order("created_at DESC")
      @showing_all = false
    else
      @movies = Movie.all
      @showing_all = true
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:media_file)
  end
end
