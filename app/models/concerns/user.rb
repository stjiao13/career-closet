class User < ActiveRecord::Base
    has_many :suits
    validates :username, presence: true
    validates :UIN, presence: true, uniqueness: true,
              length:{minimum: 9, maximum: 9}
    VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
              length: {maximum: 105},
              uniqueness: true,
              format: { with: VALID_EMAIL_REGEX}
end