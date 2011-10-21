# coding: utf-8

class Kpt < ActiveRecord::Base
  belongs_to :iteration

  validates :category,
    :presence => {:message => 'は必須です。'}
end
