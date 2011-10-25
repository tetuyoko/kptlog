require 'spec_helper'

describe "iteration" do
  before do 
    @iteration = Iteration.new({:name => "iteration", :status => "active" }) 
  end

  it "should be name" do
   @iteration.name.should == "iteration" 
   @iteration.status.should == "active" 
  end
end
