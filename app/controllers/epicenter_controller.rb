class EpicenterController < ApplicationController

	before_filter :authenticate_user!, except: [:feed, :show_post, :user_posts]

  def feed
  	@posts = Post.order(score: :desc)
  end

  def new_post
  end

  def create_post
  	post = Post.create(link: params[:link], caption: params[:caption], score: 0, user_id: current_user.id)
  	redirect_to show_post_path(id: post.id)
  end

  def create_comment
  	comment = Comment.create(comment_entry: params[:comment_entry], post_id: params[:post_id], user_id: current_user.id)
  	redirect_to show_post_path(id: comment.post_id)
  end

  def show_post
  	@post = Post.find(params[:id])
  end

  def user_posts
  	@user = User.find(params[:id])
  end

  def upvote
  	post = Post.find(params[:id])
    # post.score += 1
    # post.save
  	post.upvote
    #redirect_to show_post_path(id: post.id)
  	redirect_to :back
  end

  def downvote
  	post = Post.find(params[:id])
  	post.downvote
  	redirect_to :back
  end
end
