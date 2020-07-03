class ShelterPetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  private

  def shelter_pet_params
    params.permit(:name, :image, :approx_age, :sex, :shelter_name)
  end

end
