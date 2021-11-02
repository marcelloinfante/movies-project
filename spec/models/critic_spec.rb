require 'rails_helper'

RSpec.describe Critic, type: :model do
  describe 'validations' do
    it {is_expected.to validate_presence_of(:author)}
    it {is_expected.to validate_presence_of(:score)}
    it {is_expected.to validate_presence_of(:avaliation)}
  end
end
