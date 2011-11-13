require 'spec_helper'

describe Kpt do

  describe "#set_tag_body" do
    context 'when category => keep and body => hoge' do
      let(:concated_value) { "[keep]hoge" }
      before do 
        @kpt = Kpt.new :category => "keep",:body => "hoge"
        @kpt.set_tag_body
      end

      subject { @kpt }
      its(:body) { should eq concated_value }
    end
  end

end
