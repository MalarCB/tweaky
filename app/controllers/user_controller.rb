class UserController < ApplicationController
  before_action :set_user, only: [:destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def login
    @user = User.find(email: params[:email], password: params[:password])
    respond_to do |format|
      if @user.nil?
        format.html { render action: :login }
        format.json { render json: 'Invalid email/password', status: :unprocessable_entity }
      else
        session[:username] = @user.username
        format.html { redirect_to resource_list_path }
      end
    end
  end

  def signin
  end

  def register
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:username] = @user.username
        format.html { redirect_to resource_list_path }
      else
        format.html { render action: 'signup' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:model).permit(:user, :email, :password, :token, :status, :ipaddress, :siteid, :address1, :address2, :address3, :city, :state, :country, :zipcode)
  end
end
