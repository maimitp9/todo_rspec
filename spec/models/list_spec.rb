require 'rails_helper'

RSpec.describe List, type: :model do
  it 'has valid factory' do
    expect(build(:list)).to be_valid
  end

  describe 'ActiveRecord Validation' do
    let(:list) { build(:list, name: nil) }
    
    it 'is invalid without name' do
      expect(list).to validate_presence_of(:name)
    end

    it 'is invalid without name' do
      should validate_presence_of(:name)
    end
  end

  describe 'Activerecord Association' do 
end