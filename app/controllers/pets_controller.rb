class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    shelter = Shelter.find(params[:shelter_id])
    @shelter_id = params[:shelter_id]
    shelter.pets.create(pet_params)
    redirect_to "/shelters/#{@shelter_id}/pets"
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(pet_params)
    redirect_to "/pets/#{pet.id}"
  end

  private

  def pet_params
    params.permit(:name, :image, :approx_age, :sex, :shelter_name, :description, :status)
  end

end
