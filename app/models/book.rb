class Book < ApplicationRecord
  has_one_attached :profile_image

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

  belongs_to :user

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
end
