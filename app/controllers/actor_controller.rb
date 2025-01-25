class ActorController < ApplicationController
  def index
    @actors = Actor.all
    render template: "actors/index"
    # render json: { message: " hello" }
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render template: "actors/show"
  end

  def create
    @actor = Actor.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for]
    )
    @actor.save
    render template: "actors/show"
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name]
    @actor.last_name = params[:last_name]
    @actor.known_for = params[:known_for]
    @actor.save
    render template: "actors/show"
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: "This Actor dissapear..."
  end
end
