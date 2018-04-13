require 'rails_helper.rb'

feature "Note-taker adds a note" do
    scenario "Note-taker successfully navigates to the new note page from the listing note page" do
        visit notes_path
        expect(page).to have_content("Listing notes")
        click_link "New note"
        expect(page).to have_content("New Note")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "Note-taker successfully creates a new note" do
        visit new_note_path
        expect(page).to have_content("New Note")
        fill_in "Title", with: "New Capybara Note"
        fill_in "Text", with: "This is a new Capybara note"
        click_button "Create Note"
        expect(page).to have_content("New Capybara Note")
        expect(page).to have_content("This is a new Capybara note")
    end

end