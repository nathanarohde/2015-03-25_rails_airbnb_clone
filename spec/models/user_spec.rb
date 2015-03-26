require 'rails_helper'

describe User do
  it { should have_many :places}
  it { should have_many :pictures}
  it { should validate_presence_of :name}
  it { should validate_presence_of :email}

end
