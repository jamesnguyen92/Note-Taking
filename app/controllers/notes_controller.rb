class NotesController < ApplicationController
    def new 
    end
    
    def create
        render plain: params[:note].inspect
    end
end
