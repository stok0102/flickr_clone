class Account < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :zodiac
  has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
