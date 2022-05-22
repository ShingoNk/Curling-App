class HelloController < ApplicationController

    def index
    end

    def show
        @hello = User.find_by(admin: 'true')
        @user = User.all
    end
    

    
end
