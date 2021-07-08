class UserClassResource < ApplicationResource
  has_many :enrollments

  attribute :name, :string
  attribute :start_date, :date
  attribute :end_date, :date
  attribute :timezone, :integer
  attribute :description, :string
end
