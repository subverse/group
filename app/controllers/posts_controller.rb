class PostsController < ApplicationController
  
   before_filter :authenticate_user!
   
  # GET /posts
  # GET /posts.json
  def index
    if current_user.account.leader?
      @posts = Post.where("account_id = ? OR group_id = ?", current_user.account.id, current_user.account.group.id)
    else
      @posts = Post.where("account_id = ?", current_user.account.id)
    end
    #@posts = Post.by_groups(current_user.account)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @accounts = Account.all
    @subjects = Subject.where("account_id = ?", current_user.account.id)
    @subjects = @subjects.uniq
    
    @groups = Array.new
    @subjects.each do |subject|
      @groups.push(subject.group)
    end 
    @groups = @groups.uniq
    
    @consultants = Array.new
    @groups.each do |group|
      @consultants.concat(Consultant.where("group_id = ?", group.id))
    end
    @consultants = @consultants.uniq
    
    @ratings = Rating.all
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @post.account_id = current_user.account.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end
end
