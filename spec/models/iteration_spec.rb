#coding: utf-8
require 'spec_helper'

describe Iteration do
  
  describe '#name' do
    context '名前をいれただけ' do
      before { @iteration = Iteration.new({:name => "iteration"}) } 
      subject { @iteration }
      its(:name) { should eq "iteration" } 
    end
  end

end
