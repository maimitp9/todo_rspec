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
  
  context "ActiveRecord Callback and Accosiation" do
    let(:list) { build_stubbed(:list) }

    describe "ActiveRecord Callbacks" do
      it "should generate and save a slug on create" do
        list.run_callbacks :create
        expect(list.slug).not_to be_empty
      end
    end

    describe 'Activerecord Association' do 
      # let(:list) { create(:list) }
      let(:item) { create(:item, list: list) }

      it { expect(list).to have_many(:items) }
    end
  end 
end