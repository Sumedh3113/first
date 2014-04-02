class HomeController < ApplicationController
 def index
  if person_signed_in?
    redirect_to :controller =>'posts' ,:action =>'index'
  end
end
end