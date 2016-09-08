class Sentence < ActiveRecord::Base
  belongs_to :story
  validates :content, :presence => true
  validates :image_id, :presence => true
  validates :author, :presence => true
end
