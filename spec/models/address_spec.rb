require 'rails_helper'

describe Address do
  let(:address) { FactoryGirl.create :address}

  it 'is invalid without a first name' do
    expect(FactoryGirl.build :address, first_name: nil).not_to be_valid
  end

  it 'is invalid without a last name' do
    expect(FactoryGirl.build :address, last_name: nil).not_to be_valid
  end

  it 'is invalid without a city' do
    expect(FactoryGirl.build :address, city: nil).not_to be_valid
  end

  it 'is invalid without a country' do
    expect(FactoryGirl.build :address, country: nil).not_to be_valid
  end

  it 'is invalid without a street_address' do
    expect(FactoryGirl.build :address, street_address: nil).not_to be_valid
  end

  it 'is invalid without a phone' do
    expect(FactoryGirl.build :address, phone: nil).not_to be_valid
  end

end
