require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end
  scenario "Visit about page." do
    visit "/"
    click_link "about"
    expect(page).to have_content "Not much to say here"
  end
  scenario "Add gifs" do
    visit "/"
    click_link "New gifs"
    expect(page).to have_content "New gifs"
  end
end
