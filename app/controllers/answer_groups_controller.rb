class AnswerGroupsController < ApplicationController
  before_action :set_answer_group, only: [:show, :edit, :update, :destroy]

  # GET /answer_groups
  # GET /answer_groups.json
  def index
    @answer_groups = AnswerGroup.all
  end

  # GET /answer_groups/1
  # GET /answer_groups/1.json
  def show
  end

  # GET /answer_groups/new
  def new
    @answer_group = AnswerGroup.new
  end

  # GET /answer_groups/1/edit
  def edit
  end

  # POST /answer_groups
  # POST /answer_groups.json
  def create
    @answer_group = AnswerGroup.new(answer_group_params)

    respond_to do |format|
      if @answer_group.save
        format.html { redirect_to @answer_group, notice: 'Answer group was successfully created.' }
        format.json { render :show, status: :created, location: @answer_group }
      else
        format.html { render :new }
        format.json { render json: @answer_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_groups/1
  # PATCH/PUT /answer_groups/1.json
  def update
    respond_to do |format|
      if @answer_group.update(answer_group_params)
        format.html { redirect_to @answer_group, notice: 'Answer group was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_group }
      else
        format.html { render :edit }
        format.json { render json: @answer_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_groups/1
  # DELETE /answer_groups/1.json
  def destroy
    @answer_group.destroy
    respond_to do |format|
      format.html { redirect_to answer_groups_url, notice: 'Answer group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_group
      @answer_group = AnswerGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_group_params
      params.require(:answer_group).permit(:option, :mchat_test_id, :answer_id)
    end
end
