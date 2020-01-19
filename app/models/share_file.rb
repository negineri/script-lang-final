class ShareFile < ApplicationRecord
  has_many_attached :files
  belongs_to :user
  validates :title, presence: true, length: { maximum: 100 }
  validates :files, presence: true
end
