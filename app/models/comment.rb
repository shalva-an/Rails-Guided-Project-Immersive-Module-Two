class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :picture
    validates :content, presence: true
    validates :content, length: {maximum: 200, message: "Maximum 200 characters. Comment again..."}
    validate :profanity_filter
    
    private
    
    def profanity_filter
        bad_words = ["bomb"]
        self.content.split(" ").each do |word|
            if bad_words.include?(word)
                errors.add(:content, "Banned word")
            end
        end
    end
end