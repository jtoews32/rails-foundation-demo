class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
  
  end  
  
  def create
    
    
    
    @user = User.new(params[:user])
    
    if @user.save
      # Handle a successful save.
      
      render 'new'
    else
      render 'new'
    end
  end
  
  def edit
    

  end 
  
  def update
    
  end
  
  def destroy
    
  end
  
end
