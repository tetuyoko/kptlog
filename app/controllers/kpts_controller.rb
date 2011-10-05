class KptsController < ApplicationController
  # GET /kpts
  # GET /kpts.json
  def index
    @kpts = Kpt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kpts }
    end
  end

  # GET /kpts/1
  # GET /kpts/1.json
  def show
    @kpt = Kpt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kpt }
    end
  end

  # GET /kpts/new
  # GET /kpts/new.json
  def new
    @kpt = Kpt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kpt }
    end
  end

  # GET /kpts/1/edit
  def edit
    @kpt = Kpt.find(params[:id])
  end

  # POST /kpts
  # POST /kpts.json
  def create
    @kpt = Kpt.new(params[:kpt])

    respond_to do |format|
      if @kpt.save
        format.html { redirect_to @kpt, notice: 'Kpt was successfully created.' }
        format.json { render json: @kpt, status: :created, location: @kpt }
      else
        format.html { render action: "new" }
        format.json { render json: @kpt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kpts/1
  # PUT /kpts/1.json
  def update
    @kpt = Kpt.find(params[:id])

    respond_to do |format|
      if @kpt.update_attributes(params[:kpt])
        format.html { redirect_to @kpt, notice: 'Kpt was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @kpt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kpts/1
  # DELETE /kpts/1.json
  def destroy
    @kpt = Kpt.find(params[:id])
    @kpt.destroy

    respond_to do |format|
      format.html { redirect_to kpts_url }
      format.json { head :ok }
    end
  end
end
