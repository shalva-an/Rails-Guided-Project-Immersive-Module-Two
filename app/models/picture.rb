class Picture < ApplicationRecord
  belongs_to :user
  has_many :reactions
  has_many :comments
  has_many :picture_tags
  has_many :tags , through: :picture_tags
  before_destroy :destroy_comments
  
  private
  
  def destroy_comments
    self.comments.destroy_all
  end

end
