class MenusController < ApplicationController
  def home
    @allNews = News.order(created_at: :desc)
  end
  def profile
  end
  def live
  end
  def movie
  end
  def goods
  end
end
