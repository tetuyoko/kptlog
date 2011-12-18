# coding: utf-8

class Project < ActiveRecord::Base
  #has_many :iterations, :dependent => :destroy
  # this is for test.
  has_one :iteration
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

#  accepts_nested_attributes_for :iterations, :allow_destroy => true

  accepts_nested_attributes_for :iteration, :allow_destroy => true

  validates :name,
    :presence => {:message => 'は必須です。' },
    :uniqueness => {
      :allow_blank => true,
      :message => 'その名称は既に使われています。'
    } 
end
