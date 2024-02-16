class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness:true, presence: true
  # validates :movie_url, presence:true
  # validates :list_id, presence:true

  # class Restaurant < ApplicationRecord
  #   has_many :reviews, dependent: :destroy
  # end
end
