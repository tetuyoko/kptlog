# coding: utf-8

class Iteration < ActiveRecord::Base
  belongs_to :project
  has_many :kpts
  accepts_nested_attributes_for :kpts, :allow_destroy => true


  validates :name,
    :uniqueness => {
      :allow_blank => true,
      :message => 'その名称は既に使われています。'
    }
end
