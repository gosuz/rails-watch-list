class Movie < ApplicationRecord
  # A movie must have a unique title and an overview.
  has_many :bookmarks
  validates :title, uniqueness:true, presence: true
  validates :overview, presence: true
  # should not be able to destroy self if has bookmarks children (FAILED - 12)
end
