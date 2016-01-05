class PageController < ApplicationController
  before_filter :authenticate_record_user!

  def home
  end

  def albums
  end

  def artists
  end

  def songs
  end

  def favorite_albums
  end

  def favorite_songs
  end

  def favorite_artistes
  end

  def user_login
  end

  def search
    @term = param["term"]
    @searchalbums = param["searchalbums"] == "searchalbums"

  end
end
