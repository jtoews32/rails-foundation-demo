class TwoTestsController < ApplicationController
  # GET /two_tests
  # GET /two_tests.json
  def index
    @two_tests = TwoTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @two_tests }
    end
  end

  # GET /two_tests/1
  # GET /two_tests/1.json
  def show
    @two_test = TwoTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @two_test }
    end
  end

  # GET /two_tests/new
  # GET /two_tests/new.json
  def new
    @two_test = TwoTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @two_test }
    end
  end

  # GET /two_tests/1/edit
  def edit
    @two_test = TwoTest.find(params[:id])
  end

  # POST /two_tests
  # POST /two_tests.json
  def create
    @two_test = TwoTest.new(params[:two_test])

    respond_to do |format|
      if @two_test.save
        format.html { redirect_to @two_test, notice: 'Two test was successfully created.' }
        format.json { render json: @two_test, status: :created, location: @two_test }
      else
        format.html { render action: "new" }
        format.json { render json: @two_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /two_tests/1
  # PUT /two_tests/1.json
  def update
    @two_test = TwoTest.find(params[:id])

    respond_to do |format|
      if @two_test.update_attributes(params[:two_test])
        format.html { redirect_to @two_test, notice: 'Two test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @two_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /two_tests/1
  # DELETE /two_tests/1.json
  def destroy
    @two_test = TwoTest.find(params[:id])
    @two_test.destroy

    respond_to do |format|
      format.html { redirect_to two_tests_url }
      format.json { head :no_content }
    end
  end
end
