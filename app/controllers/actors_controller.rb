class ActorsController < ApplicationController

    before_action :finds_actor, only: [:show,:edit,:destroy,:update]
  def index
    actors = Actor.all
    render json: actors
  end

  def show
  end

  def new
    @actor = Actor.new
    @actor.movies.build
    @actor.movies.build

  end

  def create
    @actor = Actor.new(actor_params)
    @actor.save
    redirect_to actor_path(@actor)
  end

  def edit
  end

  def update
    @actor.update(actor_params)
    redirect_to actor_path(@actor)

  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

  private

  def actor_params
    params.require(:actor).permit(:name,:age, :bio, movies_attributes:[
      :title,
      :description,
      :length
    ])
  end

  def finds_actor
    @actor = Actor.find(params[:id])
  end
end
