class Place < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :pictures, :as => :imageable
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true

end
