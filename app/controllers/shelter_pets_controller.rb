class ShelterPetsController < ApplicationController
  def index
    @pets = Pet.all
    @shelter_id = params[:shelter_id]
  end

  def new
    @shelter_id = params[:shelter_id]
  end

end
