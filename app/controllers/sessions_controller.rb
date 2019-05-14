class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect "/new"
    session[:username] = params[:username]
    redirect '/'
  end

  def destroy
    session.delete :username
  end
end
