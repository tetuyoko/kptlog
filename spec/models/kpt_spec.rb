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
    @kpt.update_status
    @kpt.body.should == "[#keep]hoge"
  end
end
