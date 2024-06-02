require "application_system_test_case"

class StartupsTest < ApplicationSystemTestCase
  setup do
    @startup = startups(:one)
  end

  test "visiting the index" do
    visit startups_url
    assert_selector "h1", text: "Startups"
  end

  test "should create startup" do
    visit startups_url
    click_on "New startup"

    fill_in "Country", with: @startup.country
    check "Favorite" if @startup.favorite
    fill_in "Homepage url", with: @startup.homepage_url
    fill_in "Industry", with: @startup.industry
    fill_in "Name", with: @startup.name
    fill_in "Total funding", with: @startup.total_funding
    click_on "Create Startup"

    assert_text "Startup was successfully created"
    click_on "Back"
  end

  test "should update Startup" do
    visit startup_url(@startup)
    click_on "Edit this startup", match: :first

    fill_in "Country", with: @startup.country
    check "Favorite" if @startup.favorite
    fill_in "Homepage url", with: @startup.homepage_url
    fill_in "Industry", with: @startup.industry
    fill_in "Name", with: @startup.name
    fill_in "Total funding", with: @startup.total_funding
    click_on "Update Startup"

    assert_text "Startup was successfully updated"
    click_on "Back"
  end

  test "should destroy Startup" do
    visit startup_url(@startup)
    click_on "Destroy this startup", match: :first

    assert_text "Startup was successfully destroyed"
  end
end
