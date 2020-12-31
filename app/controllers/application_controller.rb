class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    # deviseのUserモデルにパラメーターを許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end


# rails sできない
# ps ax | grep rails
# ps ax | grep puma

# 2行出たうちの1行目の番号を入力
# kill -9 番号