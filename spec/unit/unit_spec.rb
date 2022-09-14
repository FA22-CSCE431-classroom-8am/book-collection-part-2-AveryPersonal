# location: spec/unit/unit_spec.rb
require_relative '../rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling',price:'30.5',published_date:'01/01/2021')

  end

  #1
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  #2
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  #3
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  #4
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  #5
  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end

  #subject do
    #described_class.new(title: 'harry potter', author: 'JK Rowling',price:'0',published_date:'01/01/2021')

  #end
  #6
  it 'is not valid price must be greater than 0' do
    subject.price = -1
    expect(subject).not_to be_valid
  end

  #7
  it 'is not valid price must be a number' do
    subject.price = 'a.1'
    expect(subject).not_to be_valid
  end

  #it 'is not valid without a published date' do
  #  subject.published_date = nil
  #  expect(subject).not_to be_valid
  #end

  #it 'is not valid without a published date' do
  #  subject.published_date = nil
  #  expect(subject).not_to be_valid
  #end
end
