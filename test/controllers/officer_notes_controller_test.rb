require "test_helper"

class OfficerNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @officer_note = officer_notes(:one)
  end

  test "should get index" do
    get officer_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_officer_note_url
    assert_response :success
  end

  test "should create officer_note" do
    assert_difference('OfficerNote.count') do
      post officer_notes_url, params: { officer_note: { memID: @officer_note.memID, notes: @officer_note.notes, pComplete: @officer_note.pComplete, ranking: @officer_note.ranking } }
    end

    assert_redirected_to officer_note_url(OfficerNote.last)
  end

  test "should show officer_note" do
    get officer_note_url(@officer_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_officer_note_url(@officer_note)
    assert_response :success
  end

  test "should update officer_note" do
    patch officer_note_url(@officer_note), params: { officer_note: { memID: @officer_note.memID, notes: @officer_note.notes, pComplete: @officer_note.pComplete, ranking: @officer_note.ranking } }
    assert_redirected_to officer_note_url(@officer_note)
  end

  test "should destroy officer_note" do
    assert_difference('OfficerNote.count', -1) do
      delete officer_note_url(@officer_note)
    end

    assert_redirected_to officer_notes_url
  end
end
