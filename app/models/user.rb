class User < ApplicationRecord
    has_many :followers, :class_name => 'Following', :foreign_key => 'followed_id'
    has_many :followeds, :class_name => 'Following', :foreign_key => 'follower_id'
    has_many :pictures
    has_many :comments
    has_many :reactions
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { in: 4..20}
    validates :email, uniqueness: true
    validates :email, presence: true
    validates :password, length: {maximum: 20}
    before_destroy :pictures_destroy_all, :followings_destroy_all
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    before_validation :strip_whitespace, :only => [:name, :email, :password]
    has_secure_password
    
    def to_param
        username
    end
    
    private
    
    def strip_whitespace
        self.username = self.username.strip unless self.username.nil?
        self.email = self.email.strip unless self.email.nil?
        self.password = self.password.strip unless self.password.nil?
    end
    
    def pictures_destroy_all
        self.pictures.destroy_all
    end
    
    def followings_destroy_all
        self.followers.destroy_all
        self.followeds.destroy_all
    end
end
