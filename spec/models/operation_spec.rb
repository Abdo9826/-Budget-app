require 'rails_helper'

RSpec.describe Operation, type: :model do
  # test validations.

  describe 'validations' do
    it 'is not valid without a name' do
      expect(Operation.new).to_not be_valid
    end
  end

  describe 'validations' do
    it 'is valid without a amount' do
      expect(Operation.new).to_not be_valid
    end
  end

  # test associations.

  describe 'associations' do
    it 'belongs to author' do
      expect(Operation.reflect_on_association(:author).macro).to eq(:belongs_to)
    end
  end

  describe 'associations' do
    it 'has many groups' do
      expect(Operation.reflect_on_association(:groups).macro).to eq(:has_and_belongs_to_many)
    end
  end
end
