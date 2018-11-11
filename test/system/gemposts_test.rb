require "application_system_test_case"

class GempostsTest < ApplicationSystemTestCase
  setup do
    @gempost = gemposts(:one)
  end

  test "visiting the index" do
    visit gemposts_url
    assert_selector "h1", text: "Gemposts"
  end

  test "creating a Gempost" do
    visit gemposts_url
    click_on "New Gempost"

    fill_in "Content", with: @gempost.content
    fill_in "Img", with: @gempost.img
    fill_in "Title", with: @gempost.title
    click_on "Create Gempost"

    assert_text "Gempost was successfully created"
    click_on "Back"
  end

  test "updating a Gempost" do
    visit gemposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @gempost.content
    fill_in "Img", with: @gempost.img
    fill_in "Title", with: @gempost.title
    click_on "Update Gempost"

    assert_text "Gempost was successfully updated"
    click_on "Back"
  end

  test "destroying a Gempost" do
    visit gemposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gempost was successfully destroyed"
  end
end
