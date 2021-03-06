require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it {is_expected.to validate_presence_of(:title)}
    it {is_expected.to validate_presence_of(:description)}
    it {is_expected.to validate_presence_of(:duration)}
    it {is_expected.to validate_presence_of(:price)}
  end
end
