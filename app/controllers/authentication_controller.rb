class AuthenticationController < ApplicationController
    def register
        @user = User.new
        @user.email = params[:email]
        @user.password = params[:password]
        @user.save
    end
    
    def login
    end
    
    def logout
        
    end
end