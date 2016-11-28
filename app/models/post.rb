class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :location
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :location_id, presence: true
  
  def self.search(search)
    where("name LIKE ? OR description LIKE ? OR other LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
