class HelloController < ApplicationController

    def index
    end

    def show
        @hello = User.find_by(admin: 'true')
    end
    

    
end
