class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied, with: :user_not_authorized # admin権限がない場合はエラーページを返す

  private

  def user_not_authorized
    render file: Rails.root.join("public/403.html"),
              status: :forbidden,
              layout: false # rails_adminのlayout無効化
  end
end
