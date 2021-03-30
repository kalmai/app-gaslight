class UsersController < ApplicationController
  def login
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:current_user_id] = @user.id
      session[:current_user_username] = @user.username
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @user = User.find(session[:current_user_id])
  end

  def update
    @user = User.find(session[:current_user_id])

    if @user.update(user_params)
      session[:current_user_username] = @user.username
      redirect_to root_url
    else
      render :edit
    end
  end

  def logout
    reset_session
    redirect_to root_url
  end

  def user_login
    @user = User.find_by(user_params)
    if !@user.nil?
      session[:current_user_id] = @user.id
      session[:current_user_username] = @user.username
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    @user = User.find(session[:current_user_id])
    @user.destroy
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:username,:password)
  end
end
