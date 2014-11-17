class UserController < ApplicationController
  before_action :set_user, only: [:destroy]
  before_action :additional_params, only: [:register]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    respond_to do |format|
      if @user.nil?
        format.html { render :login }
        format.json { render json: 'Invalid email/password', status: :unprocessable_entity }
      else
        session[:username] = @user.email
        format.html { redirect_to welcome_user_path }
      end
    end
  end

  def signin
  end

  def register
    @user = User.new(user_params)
    user = User.find_by(email: params[:user][:email])
    if user.nil?
      if @user.save
        redirect_to welcome_user_path, notice: 'User was successfully created.'
      else
        render action: 'signup' , notice: @user.errors
      end
    else
      flash[:error] = 'user exist already'
       render action: 'signup'
    end
  end

  def signup
    @user = User.new
  end

  def check_email
    @user = User.find_by(email: params[:email])
    if @user.nil?
      render json: 'success', status: 200
    else
      render json:  'fail', status: 422
    end
  end

  def additional_params
    begin
      params[:user][:ipaddress] = request.remote_ip
      params[:user][:country] = request.location.country
    rescue

    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def welcome

  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :token, :status, :ipaddress, :siteid, :address1, :address2, :address3, :city, :state, :country, :zipcode,
    :telephone_1, :telephone_2)
  end
end
