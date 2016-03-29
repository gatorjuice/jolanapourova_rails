class Painting < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :price, numericality: { only_integer: true }
  validates :name, :medium, :description, :price, presence: true 
end
