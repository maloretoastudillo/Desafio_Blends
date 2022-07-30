require "application_system_test_case"

class ExpertsTest < ApplicationSystemTestCase
  setup do
    @expert = experts(:one)
  end

  test "visiting the index" do
    visit experts_url
    assert_selector "h1", text: "Experts"
  end

  test "creating a Expert" do
    visit experts_url
    click_on "New Expert"

    fill_in "Age", with: @expert.age
    check "Editor" if @expert.editor
    fill_in "Name", with: @expert.name
    fill_in "Nationality", with: @expert.nationality
    check "Reviewer" if @expert.reviewer
    fill_in "Workplace", with: @expert.workplace
    check "Writer" if @expert.writer
    click_on "Create Expert"

    assert_text "Expert was successfully created"
    click_on "Back"
  end

  test "updating a Expert" do
    visit experts_url
    click_on "Edit", match: :first

    fill_in "Age", with: @expert.age
    check "Editor" if @expert.editor
    fill_in "Name", with: @expert.name
    fill_in "Nationality", with: @expert.nationality
    check "Reviewer" if @expert.reviewer
    fill_in "Workplace", with: @expert.workplace
    check "Writer" if @expert.writer
    click_on "Update Expert"

    assert_text "Expert was successfully updated"
    click_on "Back"
  end

  test "destroying a Expert" do
    visit experts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expert was successfully destroyed"
  end
end
