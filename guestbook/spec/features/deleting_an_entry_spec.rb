require "rails_helper"

RSpec.feature "Deleting an entry", :type => :feature do
  scenario "Entry gets deleted" do
    visit "/"

    fill_in "Name", :with => "Etienne"
    fill_in "Message", :with => "Test message"
    click_button "Post Entry"
    click_link "Delete"

    expect(page).to_not have_text("Etienne")
    expect(page).to_not have_text("Test message")
  end
end