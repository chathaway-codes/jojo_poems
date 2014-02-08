class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = User.find(current_user)
    end
    respond_to do |format|
      format.html { render html: @user }
      format.json { render json: @user }
    end
  end

end
