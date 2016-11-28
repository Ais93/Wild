class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :location
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :location_id, presence: true
  validate  :picture_size


private

  def self.search(search)
    where("name LIKE ? OR description LIKE ? OR other LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
  
  def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
  end
end
