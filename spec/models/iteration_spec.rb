require 'spec_helper'

describe Iteration do
  
  before do 
    @iteration = Iteration.new({:name => "iteration", :status => "active" }) 
  end

  describe '#name' do
    subject {@iteration.name}
    it {should eq "iteration"} 
  end

  describe '#status' do
    subject {@iteration.status}
    it {should eq "active"} 
  end

end
