class AuthenticationController < ApplicationController
    
    def login
        logger.debug params[:new]
        if params[:new]
            logger.debug 'creating...'
            @user = User.new
            @user.email = params[:email]
            @user.password = params[:password]
            logger.debug @user
        else
            logger.debug 'logging in...'
        end
    end
    
    def logout
        
    end
end