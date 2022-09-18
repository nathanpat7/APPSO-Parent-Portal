require "application_system_test_case"

class OfficerNotesTest < ApplicationSystemTestCase
  setup do
    @officer_note = officer_notes(:one)
  end

  test "visiting the index" do
    visit officer_notes_url
    assert_selector "h1", text: "Officer Notes"
  end

  test "creating a Officer note" do
    visit officer_notes_url
    click_on "New Officer Note"

    fill_in "Memid", with: @officer_note.memID
    fill_in "Notes", with: @officer_note.notes
    fill_in "Pcomplete", with: @officer_note.pComplete
    fill_in "Ranking", with: @officer_note.ranking
    click_on "Create Officer note"

    assert_text "Officer note was successfully created"
    click_on "Back"
  end

  test "updating a Officer note" do
    visit officer_notes_url
    click_on "Edit", match: :first

    fill_in "Memid", with: @officer_note.memID
    fill_in "Notes", with: @officer_note.notes
    fill_in "Pcomplete", with: @officer_note.pComplete
    fill_in "Ranking", with: @officer_note.ranking
    click_on "Update Officer note"

    assert_text "Officer note was successfully updated"
    click_on "Back"
  end

  test "destroying a Officer note" do
    visit officer_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Officer note was successfully destroyed"
  end
end
