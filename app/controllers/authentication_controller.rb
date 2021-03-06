class AuthenticationController < ApplicationController
    
    def login
        logger.debug params[:isNew]
        user = User.find_by email: params[:email]
        if !user.nil?
            if user.password == params[:password]
                clear_old_tokens user.id
                token = create_token user
            else
                return head :forbidden
            end
        elsif params[:isNew]
            user = User.new
            user.password = params[:password]
            user.email = params[:email]
            user.save!
            token = create_token user
        end
        if token.nil?
            return head 404
        else
            response.headers["Authentication"] = token.value
        end
    end
    
    def logout
        value = request.headers["Authentication"]
        token = Token.find_by value: value
        clear_token(token)
    end
    
    private
    def clear_old_tokens(user_id)
        old_tokens = Token.where user_id: user_id, active: 1
        logger.debug "#{old_tokens.length} tokens active"
        old_tokens.each { |t|
            clear_token(t)
        }
    end
    
    def clear_token(token)
        token.active = false
        token.save
    end
    
    def create_token(user)
        token = Token.new
        token.value = 'faketoken'
        token.user = user
        token.save!
        return token
    end
end