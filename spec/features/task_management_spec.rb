require 'spec_helper'

feature "task management" do
	scenario "User creates a new task" do
	visit "/tasks/new"

	fill_in "Name", :with => "My Widget"
	fill_in "Category", with: "Parking"
	fill_in "Location name", with: "Downtown"
	fill_in "Description", with: "My description"
	fill_in "Offer", with: "1"
	#fill_in "Expiration", with: Time.now + 1.day

    click_button "Create Task"

    expect(page).to have_text("Task was successfully created.")
	end
end
