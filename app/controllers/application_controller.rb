class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
      # サインアップ時にnameのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:uname, :usex, :uage, :uyoe, :uhole, :uassoci, :ufrequ, :ustatus, :ucomme])
      # アカウント編集の時にnameとprofileのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:uname, :usex, :uage, :uyoe, :uhole, :uassoci, :ufrequ, :ustatus, :ucomme])
    end
  
end

