require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Branch detail", with: @ticket.branch_detail
    fill_in "Date", with: @ticket.date
    fill_in "Day", with: @ticket.day
    fill_in "Spring", with: @ticket.spring
    fill_in "Description remaining", with: @ticket.description_remaining
    fill_in "Remaining", with: @ticket.remaining
    fill_in "Logged_time", with: @ticket.logged_time
    fill_in "Status", with: @ticket.status
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Branch detail", with: @ticket.branch_detail
    fill_in "Date", with: @ticket.date
    fill_in "Day", with: @ticket.day
    fill_in "Spring", with: @ticket.spring
    fill_in "Description remaining", with: @ticket.description_remaining
    fill_in "Remaining", with: @ticket.remaining
    fill_in "Logged_time", with: @ticket.logged_time
    fill_in "Status", with: @ticket.status
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
