require 'spec_helper'

describe "project" do
  before do 
    @project = Project.all 
  end

  it "should be empty" do
   @project.size.should == 2 
  end

  it "test" do
    1.should == 1
  end
end
