class Suit < ActiveRecord::Base
    validates :number, presence: true
end