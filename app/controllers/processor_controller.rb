class ProcessorController < ApplicationController
  
=begin
  def process
    @whatTheFuck = 1;
  end
=end 
  
  def handler(*params)
    @info = 1;
    # params[:login]
    
    
    redirect_to "/";
  end
  
end
