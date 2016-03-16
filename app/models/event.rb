class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :area
  acts_as_ordered_taggable_on :category
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
  
  validates :user_id, presence: true
  validates :title, presence: true
  mount_uploader :image, EventimgUploader
  validates :content, presence: true, length: { maximum: 1000 }
  validates :price, length: { minimum: 1, maximum: 100000 }
  validates :numberofpeople, length: { maximum: 1000 }
  validates :movie, length: { maximum: 200 }
end
