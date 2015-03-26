require 'rails_helper'

describe Picture do
  it { should belong_to :imageable}
  it { should validate_presence_of :name}
end
