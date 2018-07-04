class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_arrow
  respond_to :json
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    render :json => @comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    render json: @comment
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    render :json => @arrow
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      # format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
      render json: @comment, status: :created
    else
      # format.html { render :new }
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if @comment.update(comment_params)
      # format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
      render json: @comment
    else
      # format.html { render :edit }
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
  end

  private
    def set_arrow
      @comment_arrow = Arrow.find(params[:arrow_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :arrow_id)
    end
end
