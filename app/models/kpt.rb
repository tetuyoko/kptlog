# coding: utf-8

class Kpt < ActiveRecord::Base
  belongs_to :iteration

  validates :category,
    :presence => {:message => 'は必須です。'}

  def set_tag_body
    self.body = "[##{self.category}]".concat self.body
  end
end
