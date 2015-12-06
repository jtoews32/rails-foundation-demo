module SessionsHelper
  
  
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    # cookies[:expires] = 20.years.from_now.utc is what permanet does
    self.current_user = user
   end


  def signed_in?
    !current_user.nil?
  end

  
  def current_user=(user)
    # create the instance var
    @current_user = user
  end
  
  def current_user
     @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

end
