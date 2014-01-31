class User < ActiveRecord::Base
    has_many :token
    validates :email, presence: true
    validates :password, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
