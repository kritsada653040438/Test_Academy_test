require "application_system_test_case"

class QuestsTest < ApplicationSystemTestCase
  setup do
    @quest = quests(:one)
  end

  test "visiting the index" do
    visit quests_url
    assert_selector "h1", text: "My Academy Quest"
  end

  test "should create first quest" do
    visit quests_url
    puts page.text
    click_on "Add quest"

    fill_in "Details", with: @quest.details
    fill_in "Name", with: @quest.name
    check "Status" if @quest.status
    click_on "Create Quest"

    assert_text "Quest was successfully created"
    click_on "Back"
  end

  test "should update Quest" do
    visit quest_url(@quest)
    click_on "Edit this quest", match: :first

    fill_in "Details", with: @quest.details
    fill_in "Name", with: @quest.name
    check "Status" if @quest.status
    click_on "Update Quest"

    assert_text "Quest was successfully updated"
    click_on "Back"
  end

  test "should destroy Quest" do
    visit quest_url(@quest)
    accept_confirm { click_on "Destroy this quest", match: :first }
    page.accept_confirm if page.has_css?("div.confirm")
    assert_text "Quest was successfully destroyed"
  end
  teardown do
    Quest.delete_all # ลบข้อมูล Quest ทั้งหมดหลังแต่ละ test
  end
end
