class City < ActiveRecord::Base
  has_many :places
  has_many :pictures, :as => :imageable
  validates :name, presence: true
  
end
