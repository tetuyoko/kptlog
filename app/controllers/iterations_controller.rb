class IterationsController < ApplicationController
  
  def index
    @iterations = Iteration.all
  end

  def show
    @iteration = Iteration.find(params[:id])
  end

  def edit
   @iteration = Iteration.find(params[:id])
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
        format.html { redirect_to [@iteration.project, @iteration], notice: 'Iteration was successfully updated.' }
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
