class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @news = user.news.page(params[:page]).per(5).order(created_at: :desc)
  end
end
