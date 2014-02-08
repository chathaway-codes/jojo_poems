class PoemCommentsController < ApplicationController
  before_action :set_poem_comment, only: [:show, :edit, :update, :destroy]

  # GET /poem_comments
  # GET /poem_comments.json
  def index
    @poem_comments = PoemComment.all
  end

  # GET /poem_comments/1
  # GET /poem_comments/1.json
  def show
  end

  # GET /poem_comments/new
  def new
    @poem_comment = PoemComment.new
  end

  # GET /poem_comments/1/edit
  def edit
  end

  # POST /poem_comments
  # POST /poem_comments.json
  def create
    @poem_comment = PoemComment.new(poem_comment_params)

    respond_to do |format|
      if @poem_comment.save
        format.html { redirect_to @poem_comment, notice: 'Poem comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @poem_comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @poem_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poem_comments/1
  # PATCH/PUT /poem_comments/1.json
  def update
    respond_to do |format|
      if @poem_comment.update(poem_comment_params)
        format.html { redirect_to @poem_comment, notice: 'Poem comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @poem_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poem_comments/1
  # DELETE /poem_comments/1.json
  def destroy
    @poem_comment.destroy
    respond_to do |format|
      format.html { redirect_to poem_comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poem_comment
      @poem_comment = PoemComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poem_comment_params
      params.require(:poem_comment).permit(:poem_id, :user, :start, :end, :markup, :html)
    end
end
