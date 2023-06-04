json.extract! ticket, :id, :day, :date, :remaining, :description_remaining, :branch_detail, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
