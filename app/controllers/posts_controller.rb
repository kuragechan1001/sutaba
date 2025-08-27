class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿が完了しました！"
    else
      render :new, alert: "投稿に失敗しました。"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "更新が完了しました！"
    else
      render :edit, alert: "更新に失敗しました。"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "投稿を削除しました。"
  end

  private

  def post_params
    params.require(:post).permit(
      :drink_name,
      :whipcream,
      :ice_amount,
      :powder_type,
      :syrup_type,
      :other_customizeation,
      :illustration,
      :illustration_image
    )
  end
end
