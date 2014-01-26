class User < ActiveRecord::Base
    has_many :token
end
