# coding: utf-8
#
class Project < ActiveRecord::Base
  has_many :iterations
  accepts_nested_attributes_for :iterations

  validates :name,
    :presence => {
      :message => 'は必須です。' 
    },
    :uniqueness => {
      :allow_blank => true,
      :message => 'その名称は既に使われています。'
    } 
end
