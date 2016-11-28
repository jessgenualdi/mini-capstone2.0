class UsersController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Created account!"
      redirect_to '/jewelry_store'
    else
      flash[:warning] = "Invalid email or password!"
      redirect_to '/signup'
    end
  end
end
