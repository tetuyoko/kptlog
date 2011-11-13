class IterationsController < ApplicationController
  # GET /iterations
  # GET /iterations.json
  def index
    @iterations = Iteration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iterations }
    end
  end

  # GET /iterations/1
  # GET /iterations/1.json
  def show
    @iteration = Iteration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iteration }
    end
  end

  # add method. 
  # param is project_id. 
  # GET /iterations/1/add
  # GET /iterations/1/add.json
  def add 
    @iteration = Iteration.new
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # add.html.erb
      format.json { render json: @iteration }
    end
  end

  # GET /iterations/new
  # GET /iterations/new.json
   def new
     @iteration = Iteration.new
     @project = Project.all
  
     respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @iteration }
     end
   end

  # GET /iterations/1/edit
  def edit
   @iteration = Iteration.find(params[:id])
   @project = @iteration.project
  end

  def create
    @project = Project.find(params[:project_id])
    @iteration = @project.iterations.create(params[:iteration])
    redirect_to project_path(@project)
  end

  def update
    @iteration = Iteration.find(params[:id])

    respond_to do |format|
      if @iteration.update_attributes(params[:iteration])
        format.html { redirect_to @iteration, notice: 'Iteration was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @iteration.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @iteration = @project.iterations.find(params[:id])
    @iteration.destroy
    redirect_to project_path(@project)
  end

end
