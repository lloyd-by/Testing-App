class Users::ProfilesController < ApplicationController
  def show
    @user = User.find(params[:email])
    @posts = @user.posts
  end
end
