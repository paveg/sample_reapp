class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { older('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
