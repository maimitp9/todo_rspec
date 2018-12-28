require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'has valid factory' do
    expect(build(:item)).to be_valid
  end

  describe 'ActiveRecord Validations' do
    let(:item) { build(:item, title: nil) }

    it 'is invalid without title' do
      expect(item).to validate_presence_of(:title)
    end

    it 'is invalid without title' do
      should validate_presence_of(:title)
    end
  end
end
