class PostsController < ApplicationController
  http_basic_authenticate_with name: "sumedh31", password: "secret", except: [:index, :show]

  def index
    @post =Post.page(params[:title]).per(2).order("title")
  end

  def show
    @post =Post.find(params[:id]) 
  end

def new
  @post =Post.new
end

def create
  @post =Post.new(params[:post].permit(:title, :text ,:image,:tag_list))
  
  if @post.save
    redirect_to posts_path, :notice => "Your Post is saved"
  
  else
   render "new" 
  end

end

def edit
  @post =Post.find(params[:id])
end

def update
 @post = Post.find(params[:id])
if @post.update(params[:post].permit(:title, :text))#new command
redirect_to posts_path,:notice =>"Your post is updated"
else
render 'edit'
end
 
def destroy
@post = Post.find(params[:id])
@post.destroy
redirect_to posts_path ,:notice => "Your Post is deleted"
end
end

end

