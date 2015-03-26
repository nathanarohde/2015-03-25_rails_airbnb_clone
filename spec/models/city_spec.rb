require 'rails_helper'

describe City do
  it { should have_many :places}
  it { should have_many :pictures}
  it { should validate_presence_of :name}
end
