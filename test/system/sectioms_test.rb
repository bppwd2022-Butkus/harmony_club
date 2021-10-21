require "application_system_test_case"

class SectiomsTest < ApplicationSystemTestCase
  setup do
    @sectiom = sectioms(:one)
  end

  test "visiting the index" do
    visit sectioms_url
    assert_selector "h1", text: "Sectioms"
  end

  test "creating a Sectiom" do
    visit sectioms_url
    click_on "New Sectiom"

    fill_in "Location", with: @sectiom.location
    fill_in "Position", with: @sectiom.position
    fill_in "Title", with: @sectiom.title
    check "Visible" if @sectiom.visible
    click_on "Create Sectiom"

    assert_text "Sectiom was successfully created"
    click_on "Back"
  end

  test "updating a Sectiom" do
    visit sectioms_url
    click_on "Edit", match: :first

    fill_in "Location", with: @sectiom.location
    fill_in "Position", with: @sectiom.position
    fill_in "Title", with: @sectiom.title
    check "Visible" if @sectiom.visible
    click_on "Update Sectiom"

    assert_text "Sectiom was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectiom" do
    visit sectioms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectiom was successfully destroyed"
  end
end
