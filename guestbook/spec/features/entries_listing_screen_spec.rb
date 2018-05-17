require "rails_helper"

RSpec.feature "Entries Listing", :type => :feature do
  scenario "Entry gets displayed" do
    visit "/"

    fill_in "Name", :with => "Etienne"
    fill_in "Message", :with => "Test message"
    click_button "Post Entry"

    expect(page).to have_text("Etienne")
    expect(page).to have_text("Test message")
  end
end