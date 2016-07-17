class TypeTestsController < ApplicationController
  before_action :set_type_test, only: [:show, :edit, :update, :destroy]

  # GET /type_tests
  # GET /type_tests.json
  def index
    @type_tests = TypeTest.all
  end

  # GET /type_tests/1
  # GET /type_tests/1.json
  def show
  end

  # GET /type_tests/new
  def new
    @type_test = TypeTest.new
  end

  # GET /type_tests/1/edit
  def edit
  end

  # POST /type_tests
  # POST /type_tests.json
  def create
    @type_test = TypeTest.new(type_test_params)

    respond_to do |format|
      if @type_test.save
        format.html { redirect_to @type_test, notice: 'Type test was successfully created.' }
        format.json { render :show, status: :created, location: @type_test }
      else
        format.html { render :new }
        format.json { render json: @type_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_tests/1
  # PATCH/PUT /type_tests/1.json
  def update
    respond_to do |format|
      if @type_test.update(type_test_params)
        format.html { redirect_to @type_test, notice: 'Type test was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_test }
      else
        format.html { render :edit }
        format.json { render json: @type_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_tests/1
  # DELETE /type_tests/1.json
  def destroy
    @type_test.destroy
    respond_to do |format|
      format.html { redirect_to type_tests_url, notice: 'Type test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_test
      @type_test = TypeTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_test_params
      params.require(:type_test).permit(:name, :instruction)
    end
end
