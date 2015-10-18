class UsersController < ApplicationController
  protect_from_forgery except: :login
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  layout :choose_layout

  def choose_layout
    return 'home' if action_name == 'home'
    'application'
  end

  def home
    @service_categories = ServiceCategory.all
  end

  def login
    @user = User.new
    respond_to do |format|
      format.js { render :action => 'login' }
    end
  end

  def authenticate
    # if request.post? and params[:user]
    @user = User.new user_params
    user = User.find_by_username @user.username
    if user.present? and User.authenticate? @user.username, @user.password
      @authenticated_user = user
    end

    if @authenticated_user.present?
      session[:user_id] = user.id
      flash[:notice] = "#{t('welcome')}"
      render :js => "window.location = '/users/dashboard'"
      # successful_user_login(@authenticated_user) and return
    elsif @authenticated_user.blank?
      flash.now[:notice] = "#{t('login_error_message')}"
      respond_to do |format|
        format.js { render action: :login }
      end
    end
  end

  def dashboard

  end

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    respond_to do |format|
      format.js
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    # Temp solution
    @user.salt = random_string(8) if @user.salt == nil
    @user.hashed_password = Digest::SHA1.hexdigest(@user.salt + @user.password) unless @user.password.nil?

    if @user.new_record?
      @user.is_admin = true # if @user.role == 'Admin'
    end

    respond_to do |format|
      if @user.save
        # redirect_to @user, notice: 'User was successfully created.'
        flash[:notice] = 'User was successfully created.'
        format.js { redirect_to action: :login }
      else
        # render :new
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params[:user].permit :username, :password, :salt, :hashed_password
  end

  def random_string(len)
    randstr = ''
    chars = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'z').to_a
    len.times { randstr << chars[rand(chars.size - 1)] }
    randstr
  end

  def successful_user_login(user)
    session[:user_id] = user.id
    flash[:notice] = "#{t('welcome')}"

    redirect_to session[:back_url] || {:controller => 'user', :action => 'dashboard'}
  end

end