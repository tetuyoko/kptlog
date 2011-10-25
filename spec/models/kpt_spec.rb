require 'spec_helper'

describe "kpt" do
  before do 
    @kpt = Kpt.new({
      :category => "keep",
      :body => "hoge"
    }) 
  end

  it "should be name" do
    @kpt.category.should == "keep" 
  end

  it "update status" do
    @kpt.set_tag_body
    @kpt.body.should == "[#keep]hoge"
  end

 # it "not push tags when tags already" do
 #   @kpt.body = "[#try]hoge"
 #   @kpt.update_status
 #   @kpt.body.should == "[#try]hoge"
 # end

end
