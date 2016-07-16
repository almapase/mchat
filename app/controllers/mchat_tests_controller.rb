class MchatTestsController < ApplicationController
  before_action :set_mchat_test, only: [:show, :edit, :update, :destroy]

  # GET /mchat_tests
  # GET /mchat_tests.json
  def take_test
    @mchat_tests = MchatTest.all
  end

  # GET /mchat_tests
  # GET /mchat_tests.json
  def index
    @mchat_tests = MchatTest.all
  end

  # GET /mchat_tests/1
  # GET /mchat_tests/1.json
  def show
  end

  # GET /mchat_tests/new
  def new
    @mchat_test = MchatTest.new
  end

  # GET /mchat_tests/1/edit
  def edit
  end

  # POST /mchat_tests
  # POST /mchat_tests.json
  def create
    @mchat_test = MchatTest.new(mchat_test_params)

    respond_to do |format|
      if @mchat_test.save
        format.html { redirect_to @mchat_test, notice: 'Mchat test was successfully created.' }
        format.json { render :show, status: :created, location: @mchat_test }
      else
        format.html { render :new }
        format.json { render json: @mchat_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mchat_tests/1
  # PATCH/PUT /mchat_tests/1.json
  def update
    respond_to do |format|
      if @mchat_test.update(mchat_test_params)
        format.html { redirect_to @mchat_test, notice: 'Mchat test was successfully updated.' }
        format.json { render :show, status: :ok, location: @mchat_test }
      else
        format.html { render :edit }
        format.json { render json: @mchat_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mchat_tests/1
  # DELETE /mchat_tests/1.json
  def destroy
    @mchat_test.destroy
    respond_to do |format|
      format.html { redirect_to mchat_tests_url, notice: 'Mchat test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mchat_test
      @mchat_test = MchatTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mchat_test_params
      params.require(:mchat_test).permit(:order, :question)
    end
end
