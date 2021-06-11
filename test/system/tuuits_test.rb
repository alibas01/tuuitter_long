require "application_system_test_case"

class TuuitsTest < ApplicationSystemTestCase
  setup do
    @tuuit = tuuits(:one)
  end

  test "visiting the index" do
    visit tuuits_url
    assert_selector "h1", text: "Tuuits"
  end

  test "creating a Tuuit" do
    visit tuuits_url
    click_on "New Tuuit"

    fill_in "Id", with: @tuuit.id
    fill_in "Time", with: @tuuit.time
    fill_in "Title", with: @tuuit.title
    fill_in "Tuuit", with: @tuuit.tuuit
    fill_in "User", with: @tuuit.user_id
    click_on "Create Tuuit"

    assert_text "Tuuit was successfully created"
    click_on "Back"
  end

  test "updating a Tuuit" do
    visit tuuits_url
    click_on "Edit", match: :first

    fill_in "Id", with: @tuuit.id
    fill_in "Time", with: @tuuit.time
    fill_in "Title", with: @tuuit.title
    fill_in "Tuuit", with: @tuuit.tuuit
    fill_in "User", with: @tuuit.user_id
    click_on "Update Tuuit"

    assert_text "Tuuit was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuuit" do
    visit tuuits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuuit was successfully destroyed"
  end
end
