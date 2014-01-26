class AuthenticationController < ApplicationController
    
    def login
        logger.debug params[:isNew]
        @user = User.find :email => params[:email]
        if !@user.nil?
            if @user.password == params[:password]
                clear_old_tokens
                @token = Token.new
                @token.value = 'faketoken'
            else
                head :forbidden
            end
        elsif params[:isNew]
            @user = User.new
            @user.password = params[:password]
            @user.email = params[:email]
            @user.save
        else
            head :forbidden
        end
        render :json => @token
    end
    
    def logout
        
    end
    
    private
    def clear_old_tokens
        Token.find(:active => true).each do |t|
            t.active = false
            t.save
        end
    end
end