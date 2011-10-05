class HelloController < ApplicationController
  def index
    render :text => 'hello, world'
  end

  def list
    @kpts = Kpt.all
  end
end
