require 'spec_helper'

describe "project" do
  before do 
    @projects = Project.all 
  end

  it "should be empty" do
   @projects.size.should == 2 
  end

  it "should be name" do
    project = @projects.first
    project.name.should == "project2" 
  end
end
