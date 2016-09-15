class Photo < ApplicationRecord
  belongs_to :account, foreign_key: "creator_id"
  validates_presence_of :caption
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
