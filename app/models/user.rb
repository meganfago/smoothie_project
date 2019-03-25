class User < ApplicationRecord
    has_many :favorites
    has_many :smoothies, through: :favorites
end
