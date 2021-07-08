class EnrollmentResource < ApplicationResource
  belongs_to :user
  belongs_to :user_class

  filter :user_id, :integer
  filter :user_class_id, :integer

  attribute :user_id, :string
  attribute :user_class_id, :string
end
