class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  private

  def pet_params
    params.permit(:name, :image, :approx_age, :sex, :shelter_name)
  end

end
