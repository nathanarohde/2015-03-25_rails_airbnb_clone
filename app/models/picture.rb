class Picture <ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  validates :name, presence: true
end
