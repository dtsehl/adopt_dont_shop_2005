require 'rails_helper'

RSpec.describe "shelters creation page", type: :feature do
  it "can create a new shelter with a shelter name, address, city, state, zip" do

    visit "/shelters"
    expect(page).to have_content("New Shelter")

    click_link('New Shelter')
    epect(current_path).to have_content("/shelters/new")

    expect(page).to have_content("Shelter Name:")
    expect(page).to have_content("Shelter Address:")
    expect(page).to have_content("Shelter City:")
    expect(page).to have_content("Shelter State:")
    expect(page).to have_content("Shelter Zip:")
    expect(page).to have_content("Create Shelter")

    fill_in("Shelter Name:", :with => "Joe's Shelter")
    fill_in("Shelter Address:", :with => "123 Apple St.")
    fill_in("Shelter City:", :with => "Denver")
    fill_in("Shelter State:", :with => "CO")
    fill_in("Shelter Zip:", :with => 80202)

    click_link('Create Shelter')
    expect(current_path).to have_content("/shelters")
  end
end
