class PublicController < ApplicationController
  def index
    @communities = Community.all.limit(5)
    @posts = Post.limit(20).sort_by { |p| p.score }.reverse
  end

  def profile
    @profile = User.find_by_username params[:format]
    @posts = @profile.posts
  end
end
