class List < ApplicationRecord
  include Sluggable
  before_create :set_slug
  has_many :items
  validates :name, presence: true
end
