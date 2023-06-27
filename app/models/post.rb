class Post < ApplicationRecord
  validates :name,  presence: true

  scope :published, -> { where.not(published_at: nil) }
  scope :unpublished, -> { where(published_at: nil) }
  
end
