class EnrollmentResource < ApplicationResource
  belongs_to :user
  belongs_to :user_class

  attribute :user_id, :string
  attribute :user_class_id, :string
end
