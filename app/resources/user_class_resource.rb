class UserClassResource < ApplicationResource
  has_many :enrollments

  attribute :name, :string
  attribute :start_date, :date
  attribute :end_date, :date
  attribute :timezone, :integer
  attribute :description, :string

  filter :start_date, :date, single: true do
    active_on do |scope, value|
      scope.where("start_date = ?", value)
    end
  end

  filter :end_date, :date, single: true, dependent: :start_date do
    active_on do |scope, value|
      scope.where("end_date = ?", value)
    end
  end

  filter :class_range, :hash, single: true do
    eq do |scope, value|
      scope.where("start_date <= ? AND end_date >= ?", value[:lower_bound], value[:upper_bound])
    end
  end
end
