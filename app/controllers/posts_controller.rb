class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def create
    @post = Post.new(title: params[:title], start_day: params[:start_day], end_day: params[:end_day], all_day: params[:all_day], memo: params[:memo])
    
    @post.title = params[:title]
    @post.start_day = params[:start_day]
    @post.end_day = params[:end_day]
    @post.all_day = params[:all_day]
    @post.memo = params[:memo]    

    if @post.save
      flash[:notice] = "スケジュールが登録されました"
      redirect_to :posts

    else
      flash[:notice] = "スケジュールを登録できませんでした"
      render "new"

    end

  end
  
  def update
    @post = Post.find_by(id: params[:id])

    @post.title = params[:title]
    @post.start_day = params[:start_day]
    @post.end_day = params[:end_day]
    @post.all_day = params[:all_day]
    @post.memo = params[:memo]    

    if @post.save
      flash[:notice] = "スケジュールを編集しました"
      redirect_to :posts

    else
      flash[:notice] = "スケジュールを編集できませんでした"
      render "edit"
    end

  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :posts
  
  end  

end
