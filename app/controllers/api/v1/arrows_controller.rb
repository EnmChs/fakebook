class  Api::V1::ArrowsController < ApplicationController
  before_action :set_arrow, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]
  respond_to :json
  # GET /arrows
  # GET /arrows.json
  def index
    @arrows = Arrow.all
    # @users = User.all
    render :json => @arrows

  end

  # GET /arrows/1
  # GET /arrows/1.json
  def show
    render json: @arrow
  end

  # GET /arrows/new
  def new
    @arrow = Arrow.new
    render :json => @arrow
  end

  # GET /arrows/1/edit
  def edit; end

  # POST /arrows
  # POST /arrows.json
  def create
    # @arrow = Arrow.new(content: params[:data][:attributes][:content])
    @arrow = Arrow.new(arrow_params)
    if @arrow.save
      render json: @arrow, status: :created
    else
      render json: @arrow.errors, status: :unprocessable_entity
    end
    # respond_to do |format|
    #   if @arrow.save
    #     format.html { redirect_to @arrow, notice: 'Arrow was successfully created.' }
    #     format.json { render :show, status: :created, location: @arrow }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @arrow.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /arrows/1
  # PATCH/PUT /arrows/1.json
  def update
    if @arrow.update(arrow_params)
      # format.html { redirect_to @arrow, notice: 'Arrow was successfully updated.' }
      render json: @arrow
    else
      # format.html { render :edit }
      render json: @arrow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arrows/1
  # DELETE /arrows/1.json
  def destroy
    @arrow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrow
      @arrow = Arrow.find(params[:id])
      # render :json => @arrow
      # byebug
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arrow_params
      # params.require(:arrow).permit(:content, :read)
      params.require(:data).permit(:attributes => [:content])
    end
end
