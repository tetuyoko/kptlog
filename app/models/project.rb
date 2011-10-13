class Project < ActiveRecord::Base
  has_many :iterations
  accepts_nested_attributes_for :iterations
end
