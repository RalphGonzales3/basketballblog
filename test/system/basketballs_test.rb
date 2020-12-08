require "application_system_test_case"

class BasketballsTest < ApplicationSystemTestCase
  setup do
    @basketball = basketballs(:one)
  end

  test "visiting the index" do
    visit basketballs_url
    assert_selector "h1", text: "Basketballs"
  end

  test "creating a Basketball" do
    visit basketballs_url
    click_on "New Basketball"

    fill_in "Facts", with: @basketball.facts
    fill_in "Name", with: @basketball.name
    fill_in "Team", with: @basketball.team
    click_on "Create Basketball"

    assert_text "Basketball was successfully created"
    click_on "Back"
  end

  test "updating a Basketball" do
    visit basketballs_url
    click_on "Edit", match: :first

    fill_in "Facts", with: @basketball.facts
    fill_in "Name", with: @basketball.name
    fill_in "Team", with: @basketball.team
    click_on "Update Basketball"

    assert_text "Basketball was successfully updated"
    click_on "Back"
  end

  test "destroying a Basketball" do
    visit basketballs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Basketball was successfully destroyed"
  end
end
