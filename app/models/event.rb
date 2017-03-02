class Event < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true
  
  def self.search(search)
    where("title ILIKE ? OR location ILIKE ? OR description ILIKE ? OR posted_by ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%","%#{search}%")
  end
end
