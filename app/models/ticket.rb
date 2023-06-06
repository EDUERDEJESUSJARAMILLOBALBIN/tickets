class Ticket
  include Mongoid::Document
  include Mongoid::Timestamps
  field :day, type: String
  field :date, type: Date
  field :remaining, type: String
  field :description_remaining, type: String
  field :branch_detail, type: String
end
