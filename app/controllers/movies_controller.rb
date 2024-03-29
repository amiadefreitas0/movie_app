class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update,:destroy]

  def index
    movies = Movie.all
    render json:movies
  end

  def show
    movie = Movie.all.find(params[:id])
    render json:movie
  end

  def create
    movie = Movie.find_or_create_by(title: params[:text],description:params[:text],length:[:length])
    render json: movie
  end



  


  private

  def movie_params
    params.require(:movie).permit!
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end


end
