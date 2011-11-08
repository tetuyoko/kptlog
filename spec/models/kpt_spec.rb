require 'spec_helper'

describe Kpt do

  describe '#category' do
    before { @kpt = Kpt.new({:category => "keep"}) }
    subject { @kpt }
    its(:category) { should eq "keep"} 
  end

  describe "#set_tag_body" do
    before do
      @kpt = Kpt.new({:category => "keep",:body => "hoge"}) 
      @kpt.set_tag_body
    end

    let(:concated_value){ "[#keep]hoge" }
    subject { @kpt }
    its(:body) {should eq concated_value }
  end

end
