# coding: utf-8

class Iteration < ActiveRecord::Base
  belongs_to :project
  has_one :kpt

  validates :name,
    :uniqueness => {
      :allow_blank => true,
      :message => 'その名称は既に使われています。'
    }
end
