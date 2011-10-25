require 'spec_helper'

describe "project" do
  before do 
    @project = Project.new({:name => "project2"}) 
  end

  it "should be name" do
   @project.name.should == "project2" 
  end
end
