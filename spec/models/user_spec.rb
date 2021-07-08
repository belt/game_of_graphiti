require "rails_helper"

RSpec.describe User, type: :model do
  it { is_expected.to have_valid(:first_name).when(Faker::Name.first_name) }
  it { is_expected.not_to have_valid(:first_name).when(nil, "") }

  it { is_expected.to have_valid(:last_name).when(Faker::Name.first_name) }
  it { is_expected.not_to have_valid(:last_name).when(nil, "") }

  it { is_expected.to have_valid(:email).when(Faker::Internet.email, "test+spam@gmail.com") }
  it { is_expected.not_to have_valid(:email).when(nil, "") }
end
