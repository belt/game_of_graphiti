require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when(Faker::Name.first_name) }
  it { should_not have_valid(:first_name).when(nil, "") }

  it { should have_valid(:last_name).when(Faker::Name.first_name) }
  it { should_not have_valid(:last_name).when(nil, "") }

  it { should have_valid(:email).when(Faker::Internet.email, 'test+spam@gmail.com') }
  it { should_not have_valid(:email).when(nil, "") }
end
