class OneTestsController < ApplicationController
  # GET /one_tests
  # GET /one_tests.json
  def index
    @one_tests = OneTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @one_tests }
    end
  end

  # GET /one_tests/1
  # GET /one_tests/1.json
  def show
    @one_test = OneTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @one_test }
    end
  end

  # GET /one_tests/new
  # GET /one_tests/new.json
  def new
    @one_test = OneTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @one_test }
    end
  end

  # GET /one_tests/1/edit
  def edit
    @one_test = OneTest.find(params[:id])
  end

  # POST /one_tests
  # POST /one_tests.json
  def create
    @one_test = OneTest.new(params[:one_test])

    respond_to do |format|
      if @one_test.save
        format.html { redirect_to @one_test, notice: 'One test was successfully created.' }
        format.json { render json: @one_test, status: :created, location: @one_test }
      else
        format.html { render action: "new" }
        format.json { render json: @one_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /one_tests/1
  # PUT /one_tests/1.json
  def update
    @one_test = OneTest.find(params[:id])

    respond_to do |format|
      if @one_test.update_attributes(params[:one_test])
        format.html { redirect_to @one_test, notice: 'One test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @one_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_tests/1
  # DELETE /one_tests/1.json
  def destroy
    @one_test = OneTest.find(params[:id])
    @one_test.destroy

    respond_to do |format|
      format.html { redirect_to one_tests_url }
      format.json { head :no_content }
    end
  end
end
