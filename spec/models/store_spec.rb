require 'rails_helper'

RSpec.describe Store, type: :model do
  describe 'validations' do
    it {is_expected.to validate_presence_of(:name)}
    it {is_expected.to validate_presence_of(:profit)}
    it {is_expected.to validate_presence_of(:location)}
  end
end
