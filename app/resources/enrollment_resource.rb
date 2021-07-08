class EnrollmentResource < ApplicationResource
  belongs_to :user
  belongs_to :user_class

  filter :user_id, :string
  filter :user_class_id, :string

  attribute :user_id, :string
  attribute :user_class_id, :string
end
