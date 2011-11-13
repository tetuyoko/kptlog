# coding: utf-8

class Iteration < ActiveRecord::Base
  belongs_to :project
  has_many :kpts
  accepts_nested_attributes_for :kpts, :allow_destroy => true

  validates :name,
      :presence => {:message => "は必須です。"} 
end
