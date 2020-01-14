class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update,:destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movie_path(@movie)
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def delete
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :length)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end


end
