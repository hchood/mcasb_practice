require 'rails_helper'

RSpec.describe User, :type => :model do
  let!(:user) { FactoryGirl.create(:user) }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should ensure_inclusion_of(:role).in_array(['member', 'admin']) }
  it { should validate_presence_of :api_key }
  it { should validate_uniqueness_of :api_key }

  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :username }
end
