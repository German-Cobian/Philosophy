module ApplicationHelper
  def logged_in_user
    if current_user.nil?
      'Welcome'
    else
      User.find_by_id(session[:user_id]).name.to_s
    end
  end
end
