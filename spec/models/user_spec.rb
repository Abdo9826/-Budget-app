require 'rails_helper'

RSpec.describe User, type: :model do
  # test validations.

  describe 'validations' do
    it 'is not valid without a name' do
      expect(User.new).to_not be_valid
    end
  end

  describe 'validations' do
    it 'is not valid without a email' do
      expect(User.new).to_not be_valid
    end
  end

  # test associations.

  describe 'associations' do
    it 'has many groups' do
      expect(User.reflect_on_association(:groups).macro).to eq(:has_many)
    end
  end

  describe 'associations' do
    it 'has many operations' do
      expect(User.reflect_on_association(:operations).macro).to eq(:has_many)
    end
  end
end
