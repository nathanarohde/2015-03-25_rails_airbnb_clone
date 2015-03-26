require 'rails_helper'

describe Place do
  it { should belong_to :user}
  it { should belong_to :city}
  it { should have_many :pictures}
  it { should validate_presence_of :name}
  it { should validate_presence_of :price}
  it { should validate_presence_of :description}
end
