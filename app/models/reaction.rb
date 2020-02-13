class Reaction < ApplicationRecord
    belongs_to :user
    belongs_to :picture
    
    def self.reaction_pictures
        {
            "happy" => "https://i.imgur.com/hhapHSb.png",
            "sad" => "https://i.imgur.com/f1skQOv.png",
            "excited" => "https://i.imgur.com/1dJlO9A.png",
            "angry" => "https://i.imgur.com/QzNjk30.png",
            "dead" => "https://i.imgur.com/kQdZtGo.png",
        }
    end
end
