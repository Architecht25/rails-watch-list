class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  before_destroy :check_for_bookmarks

  private

  def check_for_bookmarks
    if bookmarks.exists?
      errors.add(:base, "Impossible de supprimer ce film car il est utilisé dans au moins une liste.")
      throw :abort
    end
  end
end
