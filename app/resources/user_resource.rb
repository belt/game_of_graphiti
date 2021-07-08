class UserResource < ApplicationResource
  has_many :enrollments

  attribute :first_name, :string
  attribute :last_name, :string
  attribute :email, :string
end
