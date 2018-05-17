require "rails_helper"

RSpec.feature "Creating new entry", :type => :feature do
  scenario "User creates a new entry" do
    visit "/"

    fill_in "Name", :with => "Etienne"
    fill_in "Message", :with => "Test message"
    click_button "Post Entry"

    expect(page).to have_text("Your entry has been posted!")
  end
   scenario "User creates an entry without a name" do
    visit "/"

    fill_in "Name", :with => ""
    fill_in "Message", :with => "Test message"
    click_button "Post Entry"

    expect(page).to have_text("prohibited this entry from being saved:")
  end
  scenario "User creates an entry without a message" do
    visit "/"

    fill_in "Name", :with => "Etienne"
    fill_in "Message", :with => ""
    click_button "Post Entry"

    expect(page).to have_text("prohibited this entry from being saved:")
  end
end