require 'rails_helper'

describe Author do
  context 'author' do
    let(:author) { FactoryGirl.create :author}

    it 'is invalid without a first name' do
      expect(FactoryGirl.build :author, first_name: nil).not_to be_valid
    end

    it 'is invalid without a last name' do
      expect(FactoryGirl.build :author, last_name: nil).not_to be_valid
    end

    it 'has many books' do
      expect(author).to respond_to :books
    end
  end
end
