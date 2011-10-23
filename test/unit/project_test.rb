#coding: utf-8

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
   test "project save" do
     project = Project.new({
       :name => "テストプロジェクト"
     })
     assert project.save, "Failed To save" 
   end
end
