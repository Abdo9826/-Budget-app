# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  # test validations.

  describe 'validations' do
    it 'is not valid without a name' do
      expect(Group.new).to_not be_valid
    end
  end
  describe 'validations' do
    it 'is not valid without a icon' do
      expect(Group.new).to_not be_valid
    end
  end
  describe 'validations' do
    it 'is not valid without a user_id' do
      expect(Group.new).to_not be_valid
    end
  end

  # test associations.

  describe 'associations' do
    it 'belongs to user' do
      expect(Group.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end

  describe 'associations' do
    it 'has many operations' do
      assc = described_class.reflect_on_association(:operations)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
  end
end
