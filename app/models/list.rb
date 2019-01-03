class List < ApplicationRecord
  include Sluggable
  has_many :items
  validates :name, presence: true
end
