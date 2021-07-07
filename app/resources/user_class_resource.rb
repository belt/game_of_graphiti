class UserClassResource < ApplicationResource
  belongs_to :user

  attribute :name, :string
  attribute :start_date, :date
  attribute :end_date, :date
  attribute :timezone, :integer
  attribute :description, :string
  attribute :user_id, :string
end
