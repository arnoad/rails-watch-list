class Bookmark < ApplicationRecord
  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list }

  belongs_to :movie
  belongs_to :list
end
