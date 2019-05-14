class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:username] || params[:username].empty?
      redirect "/new"
    else
      session[:username] = params[:username]
      redirect '/'
    end
  end

  def destroy
    session.delete :username
    redirect '/'
  end
end
