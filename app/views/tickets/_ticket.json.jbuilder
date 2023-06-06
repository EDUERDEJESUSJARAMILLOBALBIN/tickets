json.extract! ticket, :id, :day,:spring, :date, :remaining,:logged_time,:status, :description_remaining, :branch_detail, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
