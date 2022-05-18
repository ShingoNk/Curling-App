class UsersController < ApplicationController
  before_action :authenticate_user!
  
      def show
        @user = User.find(params[:id]) 
        @currentUserEntry=Entry.where(user_id: current_user.id)
        @userEntry=Entry.where(user_id: @user.id)
        @rooms = @user.rooms
        if @user.id ==current_user.id
          @msg =""
        else
          @currentUserEntry.each do |cu|
            @userEntry.each do |u|
              if cu.room_id == u.room_id then
                @isRoom = true
                @roomId = cu.room_id
              end
            end
          end

          if @isRoom != true
            @room = Room.new
            @entry = Entry.new
          end

        end

    end



    def index
      @users_want = User.where(ustatus: 'はい').page(params[:page]).per(20)
    end

    def adm
      @users = User.all
    end



end
