require 'rails_helper'

describe Book do
  context 'book' do
    let(:book) { FactoryGirl.create :book}

    it 'is invalid without a title' do
      expect(FactoryGirl.build :book, title: nil).not_to be_valid
    end

    it 'is invalid without a short_description' do
      expect(FactoryGirl.build :book, short_description: nil).not_to be_valid
    end

    it 'is invalid without a full_description' do
      expect(FactoryGirl.build :book, full_description: nil).not_to be_valid
    end

    it 'is invalid without a price' do
      expect(FactoryGirl.build :book, price: nil).not_to be_valid
    end

    it 'has many authors' do
      expect(book).to respond_to :authors
    end
  end
end
