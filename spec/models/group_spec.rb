require 'rails_helper'

RSpec.describe Group, type: :model do

    # test associations.
    describe 'associations' do
      it " should have many users" do
      expect(Group.reflect_on_association(:users).macro).to eq(:has_and_belongs_to_many)
      
      end
    end


  # test validations.
  describe 'validations' do
    it 'is not valid without a name' do
      expect(Group.new).to_not be_valid
    end
  end

end
