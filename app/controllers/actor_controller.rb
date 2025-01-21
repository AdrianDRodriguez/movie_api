class ActorController < ApplicationController
  def index
    @actors = Actor.all
    render template: "actors/index"
    render :index
    # render json: { message: " hello" }
  end

  def show
    @actor = Actor.find_by(id: 3)
    render template: "actors/show"
  end

  def create
    @actor = Actor.new(
    first_name: "Andrew",
    last_name: "Garfield",
    known_for: "Spider-Man"
    )
    @actor.save
    # render :show
    render template: "actors/show"
  end
end
