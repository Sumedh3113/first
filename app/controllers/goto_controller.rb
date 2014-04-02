class GotoController < ApplicationController
def index
  @todos=Goto.where(done:false)
  @todone=Goto.where(done:true)
end

def new
  @todo =Goto.new
end

def create
  @todo =Goto.new(params[:goto].permit(:name ,:done))
  
  if @todo.save
    redirect_to goto_index_path, :notice => "Your Post is saved"
  
  else
   render "new" 
  end
end

def update
 @todo = Goto.find(params[:id])
 if @todo.update(params[:goto].permit(:done, :true))#new command
 redirect_to goto_index_path,:notice =>"Your post is updated"
else
redirect_to goto_index_path,:notice =>"Your post is error"
end

def destroy
@todo = Goto.find(params[:id])
@todo.destroy
redirect_to goto_index_path ,:notice => "Your Post is deleted"
end
end
end
