# coding: utf-8

class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
  
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
    if @project.iterations.empty?
      5.times do |n|
        @project.iterations.build({:name => "イテレーション#{n+1}"})
      end
    end
  end

  # POST /projects
  # POST /projects.json
  # TODO:add iteration save
  def create
    @project = Project.new(params[:project])

    @hoge = params
     
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.' 
    else
      render action: :new 
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
       #  format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.html { redirect_to ({:action => 'index'}), notice: "#{@project.name}が更新されました." }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    name = @project.name
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url, notice: "#{name}が削除されました." }
      format.json { head :ok }
    end
  end
end
