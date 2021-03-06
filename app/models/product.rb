class Product < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, :description, :image_url, presence:true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :price, numericality: { greater_than_or_equeal_to: 0.01}
end
