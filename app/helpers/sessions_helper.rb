module SessionsHelper
  
  
  def sign in(user)
    cookies.permanent[:remember_token] = user.remember_token
    # cookies[:expires] = 20.years.from_now.utc is what permanet does
    self.current_user = user
   end


end
