class Tag < ApplicationRecord
  belongs_to :photo
  belongs_to :account
  validates_presence_of :photo_id, :account_id
end
