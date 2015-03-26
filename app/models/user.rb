class User < ActiveRecord::Base
  has_many :places
  has_many :pictures, :as => :imageable
  validates :name, presence: true
  validates_uniqueness_of :name
  validates :email, presence: true
  validates_uniqueness_of :email

end
