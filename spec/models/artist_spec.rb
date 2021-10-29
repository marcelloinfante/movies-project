require 'rails_helper'

RSpec.describe Artist, type: :model do
  context 'validation tests' do
    it 'ensures first name presence' do
      artist = Artist.new(last_name: 'Last', age: 100).save
      expect(artist).to eq(false)
    end

    it 'ensures last name presence' do
      artist = Artist.new(last_name: 'Last', age: 100).save
      expect(artist).to eq(false)
    end

    it 'ensures age presence' do
      artist = Artist.new(first_name: 'First', last_name: 'Last').save
      expect(artist).to eq(false)
    end

    it 'should save successfully' do
      artist = Artist.new(first_name: 'First', last_name: 'Last', age: 100).save
      expect(artist).to eq(true)
    end
  end
  context 'scope tests' do
  end

  describe "validations" do
    it {is_expected.to validate_presence_of(:first_name)}
  end

end
