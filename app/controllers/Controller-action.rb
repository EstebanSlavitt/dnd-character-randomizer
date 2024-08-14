class CharactersController < ApplicationController
  def randomize
    @character = Character.randomize
    @character.randomize_skills
    @character.randomize_traits
    @character.save
    render json: @character, include: [:skills, :traits]
  end
end
