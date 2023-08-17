class JournalistsController < ApplicationController
    def index
      @journalists = Journalist.all
    end
  
    def new
      @journalist = Journalist.new 
    end
  
    def create
      @journalist = Journalist.new(journalists_params)
      
      if @journalist.save
        redirect_to journalists_index_path      
      else
        render :new
      end 
    end
  
    private 
    def journalists_params
      params.require(:journalist).permit(:name, :lastname, :specialty)
    end 
end
