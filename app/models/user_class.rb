class UserClass < ApplicationRecord
  has_many :enrolments
  has_many :users, through: :enrolments

  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false

  validates :start_date, presence: true
  validates :end_date, presence: true, if: :dates_in_order?

  def dates_in_order?
    return false unless start_date && end_date

    start_date.to_datetime <= end_date.to_datetime
  end

  # offset from UTC (no daylight savings time)
  validates :timezone, numericality: {
    integer: true,
    greater_than_or_equal_to: -23, less_than_or_equal_to: 23
  }, presence: true
end
