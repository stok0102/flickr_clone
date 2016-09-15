class Photo < ApplicationRecord
  has_many :tags
  has_many :accounts, :through => :tags
  validates_presence_of :caption
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
