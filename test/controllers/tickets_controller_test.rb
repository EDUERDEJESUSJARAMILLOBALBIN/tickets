require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference("Ticket.count") do
      post tickets_url, params: { ticket: { branch_detail: @ticket.branch_detail, date: @ticket.date, day: @ticket.day,day: @ticket.spring, description_remaining: @ticket.description_remaining, remaining: @ticket.remaining,logged_time: @ticket.logged_time,status: @ticket.status } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { branch_detail: @ticket.branch_detail, date: @ticket.date, day: @ticket.day,spring: @ticket.spring, description_remaining: @ticket.description_remaining, remaining: @ticket.remaining,logged_time: @ticket.logged_time, status: @ticket.status } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference("Ticket.count", -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
