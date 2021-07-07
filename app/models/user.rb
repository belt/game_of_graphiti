class User < ApplicationRecord
  has_many :user_classes

  validates :first_name, presence: true, allow_blank: false,
            uniqueness: { scope: :last_name }
  validates :last_name, presence: true, allow_blank: false

  # NOTE: minimal validation for an email address as rfc5321 et al don't even
  # require an @ symbol... technically speaking. Therefore, do "proper" email
  # validation elsewhere
  validates :email, format: { with: /\A [^@\s]+ @[^@\s]+ \z/xs }, uniqueness: true
end
