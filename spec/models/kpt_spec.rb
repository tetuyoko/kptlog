require 'spec_helper'

describe Kpt do
  before do 
    @kpt = Kpt.new({:category => "keep",:body => "hoge"}) 
  end

  describe '#category' do
    subject {@kpt.category}
    it {should eq "keep"} 
  end

  describe "#set_tag_body" do
    let(:concated_value){ "[#keep]hoge" }
    subject {@kpt.set_tag_body}
    it {should eq concated_value }
  end

 # it "not push tags when tags already" do
 #   @kpt.body = "[#try]hoge"
 #   @kpt.update_status
 #   @kpt.body.should == "[#try]hoge"
 # end

end
