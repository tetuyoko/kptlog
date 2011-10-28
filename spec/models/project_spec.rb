require 'spec_helper'

describe Project do
  before do 
    @project = Project.new({:name => "project2"}) 
  end
  subject {@project.name}
  it {should eq "project2"} 
end
