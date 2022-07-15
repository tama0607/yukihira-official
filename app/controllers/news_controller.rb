class NewsController < ApplicationController
  before_action :set_news, only: [:edit, :show]
  before_action :move_to_index, except: [:index,:show]

  def index
    @allNews = News.includes(:user).page(params[:page]).per(5).order(created_at: :desc)
  end

  def new
    @news = News.new
  end

  def create
    News.create(news_params)
    redirect_to news_index_path
  end

  def destroy
    news = News.find(params[:id])
    news.destroy
  end

  def edit
  end

  def update
    news = News.find(params[:id])
    news.update(news_params)
  end

  def show
  end

  private
  def news_params
    params.require(:news).permit(:title,:text).merge(user_id: current_user.id)
  end

  def set_news
    @news = News.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
