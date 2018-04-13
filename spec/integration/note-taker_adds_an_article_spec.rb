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

end