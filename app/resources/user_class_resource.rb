class UserClassResource < ApplicationResource
  has_many :enrollments

  attribute :name, :string
  attribute :start_date, :date
  attribute :end_date, :date
  attribute :timezone, :integer
  attribute :description, :string

  filter :start_date, :date, :single do
    active_on do |scope, value|
      scope.where("start_date <= ? AND end_date >= ?", value, value)
    end
  end
end
