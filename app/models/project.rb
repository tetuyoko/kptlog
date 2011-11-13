# coding: utf-8

class Project < ActiveRecord::Base
  has_many :iterations, :dependent => :destroy
#  accepts_nested_attributes_for :iterations, :allow_destroy => true

  validates :name,
    :presence => {:message => 'は必須です。' },
    :uniqueness => {
      :allow_blank => true,
      :message => 'その名称は既に使われています。'
    } 
end
